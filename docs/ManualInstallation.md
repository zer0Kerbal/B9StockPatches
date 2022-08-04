---
permalink: /ManualInstallation.html
title: Manual Installation
description: the flat-pack Kiea instructions, written in Kerbalese, unusally present
tags: installation,directions,page,kerbal,ksp,zer0Kerbal,zedK
---

<!-- ManualInstallation.md v1.1.7.0
B9 Stock Patches (B9SP)
created: 01 Oct 2019
updated: 18 Apr 2022 -->

<!-- based upon work by Lisias -->

# B9 Stock Patches (B9SP)

[Home](./index.md)

This addon uses Module Manager patches to add an assortment of B9fuelswitch tank types to stock and DLC fuel tanks.

## Installation Instructions

### Using CurseForge/OverWolf app or CKAN

You should be all good! (check for latest version on CurseForge)

### If Downloaded from CurseForge/OverWolf manual download

To install, place the `KGEx` folder inside your Kerbal Space Program's GameData folder:

* **REMOVE ANY OLD VERSIONS OF THE PRODUCT BEFORE INSTALLING**, including any other fork:
  * Delete `<KSP_ROOT>/GameData/KGEx/B9StockPatches`
* Extract the package's `KGEx/` folder into your KSP's GameData folder as follows:
  * `<PACKAGE>/KGEx` --> `<KSP_ROOT>/GameData`
    * Overwrite any preexisting folder/file(s).
  * you should end up with `<KSP_ROOT>/GameData/B9StockPatches`

### If Downloaded from SpaceDock / GitHub / other

To install, place the `GameData` folder inside your Kerbal Space Program folder:

* **REMOVE ANY OLD VERSIONS OF THE PRODUCT BEFORE INSTALLING**, including any other fork:
  * Delete `<KSP_ROOT>/GameData/KGEx/B9StockPatches`
* Extract the package's `GameData` folder into your KSP's root folder as follows:
  * `<PACKAGE>/GameData` --> `<KSP_ROOT>`
    * Overwrite any preexisting file.
  * you should end up with `<KSP_ROOT>/GameData/KGEx/B9StockPatches`

## The following file layout must be present after installation

```markdown
<KSP_ROOT>
  + [GameData]
    + [B9PartSwitch][B9PS]
      + [Plugins]
          B9PartSwitch.dll
          ...
        ...
      ...
    + [KGEx][KGX]
      + [B9StockPatches]
        + [Compatibility]
          ...
        + [Localization]
          ...
        + [Configs]
          ...
        * #.#.#.#.htm
        * Attributions.htm
        * B9StockPatches.version
        * changelog.md
        * GPL-3.0.txt
        * ManualInstallation.htm
        * readme.htm
      ...
    ...
    * [Module Manager][mm] or [Module Manager /L][mml]
    * ModuleManager.ConfigCache
    ...
  * KSP.log
  ...
```

### Dependencies

* [KGEx (KGX)][KGX]
* [B9PartSwitch (B9)][B9PS]
* *either*
  * [Module Manager][mm]
  * [Module Manager /L][mml]

[KGX]: https://forum.kerbalspaceprogram.com/index.php?/topic/192696-*/ "KGEx"

[B9PS]:  http://forum.kerbalspaceprogram.com/index.php?showtopic=140541/ "B9 Part Switcher"
[mm]: https://forum.kerbalspaceprogram.com/index.php?/topic/50533-*/ "Module Manager"
[mml]: https://github.com/net-lisias-ksp/ModuleManager "Module Manager /L"
