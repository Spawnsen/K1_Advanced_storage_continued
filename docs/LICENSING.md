# Licensing and artwork provenance

Reviewed on 2026-10-26 for the unofficial Factorio 2.1 continuation.

## Distribution license

The combined continuation is distributed under **GNU General Public License, version 3 only** (`GPL-3.0-only`). Original notices are preserved in `THIRD-PARTY-NOTICES.md` and `LICENSES/`. Upstream MIT permissions for independently authored contributions remain documented. Inherited Krastorio material is not represented as MIT-only.

GPLv3 is used as a common distribution basis for the publicly identified GPLv3 artwork, the LGPLv3 material and later MIT contributions. LGPLv3 incorporates GPLv3 with additional permissions; GPLv3 section 7 permits distributing a copy without additional permissions. This is not a claim that upstream authors assigned their copyrights to this maintainer or that every upstream file has only one available license.

## Public license evidence

1. [Krastorio Legacy](https://mods.factorio.com/mod/Krastorio) identifies LGPLv3 and credits Krastor for the graphics.
2. [Krastorio Graphics](https://mods.factorio.com/mod/Krastorio-graphics) identifies LGPLv3 for the separate graphics package.
3. [Krastorio2Assets at the checked revision](https://github.com/raiguard/Krastorio2Assets/tree/8327c886c611b825b9c76e9ab0a574589298146b) contains an LGPLv3 `LICENSE`. Twelve supplied chest sprites match its strongbox and warehouse artwork exactly after decoding to RGBA. Different PNG compression explains differences in file bytes.
4. In a [public answer about reusing sprites](https://mods.factorio.com/mod/Krastorio2/discussion/60b69a186bd4b7545448ff52), Krastor states: "Sure. All graphics have GNU GPLv3 license."
5. [K1 Advanced storage / Juicy_mods](https://mods.factorio.com/mod/Juicy_mods), the earlier standalone storage mod, identifies LGPLv3.
6. The immediate [K1 Advanced storage continued upstream](https://mods.factorio.com/mod/K1_Advanced_storage_continued) identifies MIT. That portal entry alone does not establish an MIT-only relicensing of inherited Krastorio material.

## Per-file evidence

[asset-provenance.json](asset-provenance.json) lists all **26 included PNG files**, their SHA-256 hashes, their reference URLs and the comparison method.

- All twelve chest sprite files have identical decoded RGBA pixels to their documented Krastorio2Assets counterparts.
- All twelve inventory icons and both supplied research graphics have byte-identical counterparts in the original Krastorio2 history at `e2b75a55935cc5fe848e24008c14e18700fdf419`.

The historical revision still contained a restrictive beta license. Its URLs and hashes are used **only to establish file identity**, not as a redistribution grant. The later public licensing evidence and Krastor's statement above supply the basis for using his artwork. The statement is general; it is not a separately negotiated permission or endorsement for this particular continuation.

The original `graphics/technology/k1v-simple-logistic-chest.png` and `thumbnail.png` were not matched to exact original references. They are excluded from this publication. Simple-logistics research instead uses the already documented `k1v-chest.png` graphic.

## Source form and scope

The supplied source includes the editable mod code, configuration, translations and the upstream raster files used by the game. The immediate upstream archive did not include Blender scenes or layered image projects. No claim is made that such authoring projects were obtained. GPLv3 section 1 defines source as the preferred form for making modifications; if additional required original source material is identified, it should be made available with the affected assets or the assets should be replaced before further distribution.

Upstream account names are acknowledged as found. No unsupported historical copyright dates, account equivalences or endorsements are asserted. No upstream private beta archives, unrelated artwork, sound assets or Factorio game files are included.

## License texts

- [GNU GPLv3](../LICENSE), also available from the [Free Software Foundation](https://www.gnu.org/licenses/gpl-3.0.html).
- [GNU LGPLv3](../LICENSES/LGPL-3.0.txt), retained with the GPL text.
- [Original Legacy notice](../LICENSES/Krastorio-Legacy-NOTICE.txt).
- [Upstream MIT text and attribution](../LICENSES/MIT.txt).
