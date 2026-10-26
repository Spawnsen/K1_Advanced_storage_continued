"""Run the packaged mod in isolated base-game and Space Age test environments."""
# SPDX-License-Identifier: GPL-3.0-only
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess

from build import ROOT, build


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--factorio", required=True, type=Path, help="Factorio executable")
    parser.add_argument("--work-dir", type=Path, default=ROOT / ".test-output")
    parser.add_argument("--previous-archive", type=Path,
                        help="Optional 2.1.1 archive to test migration from the old mod ID")
    args = parser.parse_args()
    executable = args.factorio.resolve()
    if not executable.is_file():
        parser.error(f"Factorio executable not found: {executable}")
    data = executable.parents[2] / "data"
    if not (data / "base").is_dir():
        parser.error(f"Factorio data directory not found: {data}")
    archive = build()
    current_mod = json.loads((ROOT / "info.json").read_text(encoding="utf-8"))["name"]
    if args.previous_archive and not args.previous_archive.is_file():
        parser.error(f"Previous archive not found: {args.previous_archive}")
    for expansion in (False, True):
        case = args.work_dir.resolve() / "fresh" / ("space-age" if expansion else "vanilla")
        mods = case / "mods"
        user = case / "user"
        mods.mkdir(parents=True, exist_ok=True)
        user.mkdir(exist_ok=True)
        shutil.copy2(archive, mods / archive.name)
        helper = mods / "k1-compatibility-test_1.0.0"
        shutil.copytree(ROOT / "tests/compatibility", helper, dirs_exist_ok=True)
        mod_list = [{"name": name, "enabled": enabled} for name, enabled in (
            ("base", True), ("elevated-rails", expansion), ("quality", expansion),
            ("recycler", expansion), ("space-age", expansion),
            (current_mod, True), ("K1_Advanced_storage_continued", False),
            ("k1-compatibility-test", True),
        )]
        (mods / "mod-list.json").write_text(json.dumps({"mods": mod_list}), encoding="utf-8")
        config = case / "config.ini"
        config.write_text(f"[path]\nread-data={data.as_posix()}\nwrite-data={user.as_posix()}\n",
                          encoding="utf-8")
        common = [str(executable), "--config", str(config), "--mod-directory", str(mods)]
        save = case / "test-save.zip"
        output = user / "script-output"
        for name in ("compatibility-result.txt", "reload-result.txt"):
            marker = output / name
            if marker.exists():
                marker.unlink()
        for label, parameters in (
            ("create", ["--create", str(save), "--map-gen-seed", "42"]),
            ("reload", ["--benchmark", str(save), "--benchmark-ticks", "60", "--benchmark-runs", "1"]),
        ):
            result = subprocess.run(common + parameters, capture_output=True, encoding="utf-8",
                                    errors="replace", timeout=180,
                                    creationflags=subprocess.CREATE_NO_WINDOW if os.name == "nt" else 0)
            log = result.stdout + result.stderr
            (case / (label + ".log")).write_text(log, encoding="utf-8")
            if result.returncode:
                raise RuntimeError(f"{case.name} {label}: exit {result.returncode}\n{log[-6000:]}")
        for name in ("compatibility-result.txt", "reload-result.txt"):
            marker = output / name
            if not marker.is_file():
                raise RuntimeError(f"{case.name}: missing test result {name}")
            print(case.name + ": " + marker.read_text(encoding="utf-8").strip(), flush=True)

    if args.previous_archive:
        for expansion in (False, True):
            for stage in ("simple", "advanced"):
                case = args.work_dir.resolve() / "rename" / (
                    ("space-age" if expansion else "vanilla") + "-" + stage)
                mods = case / "mods"
                user = case / "user"
                mods.mkdir(parents=True, exist_ok=True)
                user.mkdir(exist_ok=True)
                shutil.copy2(args.previous_archive, mods / args.previous_archive.name)
                shutil.copy2(archive, mods / archive.name)
                helper = mods / "k1-compatibility-test_1.0.0"
                shutil.copytree(ROOT / "tests/compatibility", helper, dirs_exist_ok=True)
                helper_info = json.loads((helper / "info.json").read_text())
                helper_info["dependencies"] = ["base >= 2.1.7",
                                                "? K1_Advanced_storage_continued >= 2.1.1",
                                                f"? {current_mod} >= 2.1.2"]
                (helper / "info.json").write_text(json.dumps(helper_info), encoding="utf-8")
                control = (helper / "control.lua").read_text(encoding="utf-8")
                (helper / "control.lua").write_text(
                    control.replace('local test_stage = "advanced"', f'local test_stage = "{stage}"'),
                    encoding="utf-8")
                config = case / "config.ini"
                config.write_text(f"[path]\nread-data={data.as_posix()}\nwrite-data={user.as_posix()}\n",
                                  encoding="utf-8")
                common = [str(executable), "--config", str(config), "--mod-directory", str(mods)]
                save = case / "old-id-save.zip"
                marker = user / "script-output/reload-result.txt"
                if marker.exists():
                    marker.unlink()
                for renamed in (False, True):
                    enabled = [("base", True), ("elevated-rails", expansion),
                               ("quality", expansion), ("recycler", expansion),
                               ("space-age", expansion), (current_mod, renamed),
                               ("K1_Advanced_storage_continued", not renamed),
                               ("k1-compatibility-test", True)]
                    (mods / "mod-list.json").write_text(json.dumps({"mods": [
                        {"name": name, "enabled": flag} for name, flag in enabled]}), encoding="utf-8")
                    parameters = (["--benchmark", str(save), "--benchmark-ticks", "60",
                                   "--benchmark-runs", "1"] if renamed else
                                  ["--create", str(save), "--map-gen-seed", "42"])
                    result = subprocess.run(common + parameters, capture_output=True,
                                            encoding="utf-8", errors="replace", timeout=180,
                                            creationflags=subprocess.CREATE_NO_WINDOW if os.name == "nt" else 0)
                    log = result.stdout + result.stderr
                    label = "renamed" if renamed else "old-id"
                    (case / (label + ".log")).write_text(log, encoding="utf-8")
                    if result.returncode:
                        raise RuntimeError(f"{case.name} {label}: exit {result.returncode}\n{log[-6000:]}")
                if not marker.is_file():
                    raise RuntimeError(f"{case.name}: rename result missing")
                print("rename " + case.name + ": " + marker.read_text(encoding="utf-8").strip(), flush=True)


if __name__ == "__main__":
    main()
