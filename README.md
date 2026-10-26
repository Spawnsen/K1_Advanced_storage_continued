# K1 Advanced Storage — Factorio 2.1

Large storage chests and all five logistic variants, featuring artwork originally created for **[Krastorio Legacy](https://mods.factorio.com/mod/Krastorio)**. This is an unofficial Factorio 2.1 continuation of **[K1 Advanced storage continued](https://mods.factorio.com/mod/K1_Advanced_storage_continued)**, maintained by **Spawnsen**.

[**Download version 2.1.2 — installable ZIP**](https://github.com/Spawnsen/K1_Advanced_storage_continued/raw/refs/heads/main/downloads/Spawnsen_K1_Advanced_Storage_2.1.2.zip)

From version 2.1.2, the unique internal mod name is **`Spawnsen_K1_Advanced_Storage`**. The GitHub repository address is unchanged. The chest, item, recipe and technology names are preserved.

## Features

| Chest size | Footprint | Default inventory* | Configurable range |
|---|---|---:|---:|
| Medium | 2 × 2 tiles | 200 slots | 100–200 slots |
| Large | 6 × 6 tiles | 2,000 slots | 800–2,000 slots |

*At normal quality.*

Both sizes are available as **regular, storage, buffer, requester, active provider and passive provider** chests: twelve variants in total. Every chest supports circuit connections. Requester and buffer chests have configurable trash inventories. English, German and Russian translations are included.

Three research stages unlock larger chests, simple logistic chests and advanced logistic chests. With Space Age enabled, advanced research uses space science packs and the chests cannot be placed on space platforms. These rules are inherited from the upstream mod.

## Requirements

- **Factorio 2.1.7 or newer within the 2.1 series**.
- No additional third-party mods required.
- Space Age, Quality, Recycler and Elevated Rails are optional. Tested with Factorio **2.1.23**, both without expansions and with all four expansion mods.

## Installation

1. Download `Spawnsen_K1_Advanced_Storage_2.1.2.zip` using the link above.
2. Copy the ZIP into your Factorio mods directory **without extracting it**. On Windows this is usually `%APPDATA%\Factorio\mods`.
3. Disable **K1 Advanced storage continued**, including this fork's versions 2.1.0 and 2.1.1. Also disable **K1 Advanced storage / Juicy_mods** if installed.
4. Enable **K1 Advanced Storage — Factorio 2.1** and restart Factorio.

Use the installable ZIP linked above. GitHub's **Code → Download ZIP** downloads the development repository. The old 2.1.1 ZIP in `downloads/` is retained as a historical release and migration-test input; it is not the current package.

### Switching an existing save to the renamed mod

Version 2.1.2 changes the mod ID from `K1_Advanced_storage_continued` to `Spawnsen_K1_Advanced_Storage`. Existing prototype names and startup-setting names are retained. A migration restores recipe unlocks from the preserved research state after inherited migrations run under the new mod ID.

**Disable the old mod and enable the new one before loading the save.** Do not load and save the map with both storage mods disabled in between. They define the same prototypes and are marked incompatible with simultaneous use.

First try the switch on a copy of your save. Automated checks cover a 2.1.1 test save migrated to this renamed fork, including all twelve chests, contents and research/recipe states. Arbitrary user saves and every third-party mod combination have not been tested.

## Startup settings

Change these under **Settings → Mod settings → Startup**, then restart Factorio:

| Setting | Default | Minimum | Maximum |
|---|---:|---:|---:|
| Medium chest inventory | 200 | 100 | 200 |
| Large chest inventory | 2,000 | 800 | 2,000 |
| Medium logistic chest trash inventory | 20 | 10 | 40 |
| Large logistic chest trash inventory | 40 | 10 | 80 |

Trash inventories apply to requester and buffer chests. Inventory figures refer to normal quality.

## Changes in this continuation

- Factorio 2.1 compatibility, updated logistic chest animations and circuit connector definitions.
- Correct request-slot property names and explicit opening duration.
- A distinct internal mod ID and package name for independent Mod Portal publication.
- License texts, upstream attribution and artwork provenance included.

Recipes, default inventories and research progression are based on upstream 2.0.3. Simple logistics research reuses the documented chest research artwork. The previous green research icon and branded thumbnail are omitted because their separate provenance was not conclusively identified.

See [changelog.txt](changelog.txt) for the version history. The ready-to-copy English Mod Portal description is in [MOD_PORTAL_DESCRIPTION.md](MOD_PORTAL_DESCRIPTION.md).

## Credits and upstream projects

| Project / contributors | Contribution |
|---|---|
| [Krastor](https://mods.factorio.com/user/Krastor) and [Krastorio Legacy](https://mods.factorio.com/mod/Krastorio) | Original chest designs and artwork |
| Linver and the Krastorio team | Original Krastorio development |
| [Krastorio Graphics](https://mods.factorio.com/mod/Krastorio-graphics), [Krastorio 2](https://mods.factorio.com/mod/Krastorio2), [Krastorio2Assets](https://github.com/raiguard/Krastorio2Assets), raiguard | Artwork sources, maintenance and continued development |
| [K1 Advanced storage / Juicy_mods](https://mods.factorio.com/mod/Juicy_mods), Keyboarg91 | Earlier standalone storage mod |
| [K1 Advanced storage continued](https://mods.factorio.com/mod/K1_Advanced_storage_continued), Vystella / SuzukinCblH | Immediate upstream version 2.0.3; Vystella is the portal owner and SuzukinCblH is named in its `info.json` |
| [Spawnsen](https://github.com/Spawnsen) | Maintenance of this Factorio 2.1 continuation |

This is an independent, unofficial continuation. Attribution does not imply endorsement by upstream authors.

## License

The combined continuation is distributed under **GNU GPL version 3 only** (`GPL-3.0-only`); see [LICENSE](LICENSE).

Original LGPLv3 and MIT notices are retained in [THIRD-PARTY-NOTICES.md](THIRD-PARTY-NOTICES.md) and `LICENSES/`. The inherited artwork is not represented as MIT-only. All 26 included PNGs have checksums and source references in [docs/asset-provenance.json](docs/asset-provenance.json). See also [docs/LICENSING.md](docs/LICENSING.md).

## Build and test

Python 3.10 or newer is required; no additional Python packages are needed.

```console
python tools/build.py
```

The ZIP is written to `downloads/`, including runtime files, artwork, license texts and documentation. Factorio game files are not bundled.

With Factorio installed, run the isolated compatibility and rename checks:

```console
python tools/test_compatibility.py --factorio "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\Factorio.exe" --previous-archive downloads/K1_Advanced_storage_continued_2.1.1.zip
```

The script builds the current ZIP, validates all twelve chest variants in new maps, then reloads the maps for 60 ticks, with and without expansion mods. With `--previous-archive`, it additionally checks switching 2.1.1 saves to the renamed mod with simple and advanced research states.

Checks cover inventories, stored items, connector definitions, logistic modes, trash inventories, item mappings, recipes and research unlocks. Reload and rename checks verify the same chest entities, unit numbers, contents and saved research/recipe states. Logs are written under `.test-output/`; normal Factorio settings, mods and user saves are not used. Visual rendering and every third-party mod combination are outside these tests.

## Report a problem

Open an [issue in this repository](https://github.com/Spawnsen/K1_Advanced_storage_continued/issues) with the Factorio version, mod version, other active mods and the full error message. Report problems with this continuation here.
