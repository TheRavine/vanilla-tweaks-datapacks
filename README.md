# Vanilla Tweaks Datapacks Mirror

This is a mirror of the datapacks from
https://vanillatweaks.net/picker/datapacks/. It is meant to be a normalized
version of datapacks for reference. It is not currently meant for actual usage.

## Branches

There is a branch for each Minecraft version:

- [minecraft-1.13](https://github.com/belak/vanilla-tweaks-datapacks/tree/minecraft-1.13)
- [minecraft-1.14](https://github.com/belak/vanilla-tweaks-datapacks/tree/minecraft-1.14)
- [minecraft-1.15](https://github.com/belak/vanilla-tweaks-datapacks/tree/minecraft-1.15)
- [minecraft-1.16](https://github.com/belak/vanilla-tweaks-datapacks/tree/minecraft-1.16)

The default branch will always track the latest supported Minecraft version.

## Normalization

When extracting, the following tools should be run on all files
(`extract-datapacks.sh` does this automatically):

- dos2unix (for fixing/normalizing line endings)

## Oddities

There are a number of oddities:

- 784c4ea8923b6dfefb49848457740757b695231b - In 1.14, `dragon_drops` replaced
  `dragon_drops_elytra`
- d654ba650df00e69a372bcef545fa0e90c61871b - In 1.15, `armor_statues` replaced
  `customizable_armor_stands`
- 5bbf8201e54cae6b53362437be15982c67ce7544,
  5c968ca9af951308d4298578d3bd413ad0ff602a - In 1.16, `wandering_trades` was
  split into two incompatible datapacks `wandering_trades_hermits` (which is
  closer to the original `wandering_trades`) and a new `wandering_trades`
  without the hermit heads.
- f18b6e7f21b18a9f1f3a1a479249296ba226942d - In 1.16, `armor_statues` was
  renamed to `armour_statues`

## Notes

The scripts (`Makefile` and `extract-datapacks.sh`) should only be used if you're
updating datapacks. They are very hacky so they should only be used if you
understand them and understand the risks.

## Terms

All Datapacks are provided under the same terms as https://vanillatweaks.net.

All scripts are provided as-is and are under the CC0 1.0 license.
