"""Build an installable Factorio mod ZIP using only the Python standard library."""
from pathlib import Path
import hashlib
import json
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def build() -> Path:
    info = json.loads((ROOT / "info.json").read_text(encoding="utf-8"))
    prefix = f"{info['name']}_{info['version']}"
    files = [ROOT / name for name in (
        "info.json", "data.lua", "data-updates.lua", "settings.lua", "changelog.txt",
        "LICENSE", "README.md", "THIRD-PARTY-NOTICES.md",
    )]
    for name in ("graphics", "locale", "migrations", "prototypes", "LICENSES", "docs"):
        files.extend(p for p in (ROOT / name).rglob("*") if p.is_file())
    manifest = json.loads((ROOT / "docs/asset-provenance.json").read_text(encoding="utf-8"))
    pngs = {p.relative_to(ROOT).as_posix() for p in files if p.suffix == ".png"}
    if pngs != {entry["file"] for entry in manifest}:
        raise ValueError("PNG file set does not match the provenance manifest")
    for entry in manifest:
        if hashlib.sha256((ROOT / entry["file"]).read_bytes()).hexdigest() != entry["sha256"]:
            raise ValueError(f"Artwork checksum changed: {entry['file']}")
    destination = ROOT / "downloads" / (prefix + ".zip")
    destination.parent.mkdir(exist_ok=True)
    with zipfile.ZipFile(destination, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path in sorted(files):
            name = prefix + "/" + path.relative_to(ROOT).as_posix()
            member = zipfile.ZipInfo(name, date_time=(2026, 10, 26, 0, 0, 0))
            member.compress_type = zipfile.ZIP_DEFLATED
            member.external_attr = 0o100644 << 16
            archive.writestr(member, path.read_bytes())
    with zipfile.ZipFile(destination) as archive:
        if archive.testzip() is not None:
            raise ValueError("Archive integrity check failed")
    print(destination)
    return destination


if __name__ == "__main__":
    build()
