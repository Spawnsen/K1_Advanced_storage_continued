# Third-party notices

This unofficial continuation combines work from the projects below. The combined distribution is offered under GNU GPL version 3 only. This does not claim authorship of upstream work or remove any independently available upstream permissions.

## Krastorio artwork and inherited material

- Original artwork: **Krastor**, with original Krastorio development by **Krastor and Linver** and subsequent maintenance by **raiguard** and the Krastorio contributors.
- [Krastorio Legacy](https://mods.factorio.com/mod/Krastorio) and [Krastorio Graphics](https://mods.factorio.com/mod/Krastorio-graphics): listed as GNU LGPLv3.
- [Krastorio2Assets license](https://github.com/raiguard/Krastorio2Assets/blob/8327c886c611b825b9c76e9ab0a574589298146b/LICENSE): GNU LGPL version 3. The repository's container artwork matches all twelve supplied chest sprites pixel for pixel.
- [Krastor's public permission statement](https://mods.factorio.com/mod/Krastorio2/discussion/60b69a186bd4b7545448ff52): "Sure. All graphics have GNU GPLv3 license."

Copies of the LGPL text and the original Legacy notice are retained in [LICENSES/LGPL-3.0.txt](LICENSES/LGPL-3.0.txt) and [LICENSES/Krastorio-Legacy-NOTICE.txt](LICENSES/Krastorio-Legacy-NOTICE.txt). The GPL text is in [LICENSE](LICENSE).

Twelve inventory icons and two research icons also have byte-identical counterparts in the original Krastorio2 history. Those historical references establish provenance; an early restricted beta license found in that history is **not** used as permission to redistribute. The later public graphic-license evidence above is the basis for this continuation's distribution. See [docs/LICENSING.md](docs/LICENSING.md) and [the per-file manifest](docs/asset-provenance.json).

## Earlier standalone K1 mod

[K1 Advanced storage / Juicy_mods](https://mods.factorio.com/mod/Juicy_mods), maintained by **Keyboarg91**, is an earlier standalone extraction of the Krastorio storage buildings. Its portal entry identifies GNU LGPLv3. It is acknowledged as part of the project's lineage; a complete file-by-file comparison of that release archive was not performed.

## Immediate upstream: K1 Advanced storage continued

This continuation started with **K1_Advanced_storage_continued 2.0.3** from:

https://mods.factorio.com/mod/K1_Advanced_storage_continued

The upstream portal lists **Vystella** as owner and **MIT** as its license. The upstream `info.json` lists **Krastor, SuzukinCblH** as authors. These account names are preserved without assuming that different names refer to the same person.

The upstream archive did not supply a separate license file or a year-specific copyright notice. The MIT license text is retained in [LICENSES/MIT.txt](LICENSES/MIT.txt), with the upstream attribution recorded here. No historical copyright years are invented. The MIT portal entry is not treated as replacing the original Krastorio copyleft permissions for inherited artwork or other inherited material.

## This continuation

**Spawnsen** maintains this unofficial Factorio 2.1 continuation. Compatibility changes were prepared on **2026-10-26** and are described in [changelog.txt](changelog.txt).

Changes include the Factorio version declaration, logistic robot-door animation definitions, circuit connector definitions and request-slot property names. The simple-logistics research icon now reuses the documented chest research graphic. The unverified upstream green research icon, branded thumbnail and Windows `desktop.ini` are omitted.

The source distribution contains editable Lua/configuration/localization files and the upstream PNG artwork. No Blender or layered artwork project files were supplied with the immediate upstream archive. This repository does not claim to contain such original authoring projects or to have obtained a separate endorsement from the upstream authors.

Factorio itself is not included. References beginning with `__base__` or `__core__` resolve to assets and libraries provided by the user's own Factorio installation.
