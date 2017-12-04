# Paint Vehicles

**Last update: [2017-12-04], v1.4** ([see changelog](#changelog))

---

[Go to Epoch forum thread][scriptthread]

---

## Credits

**All credits goes to its original authors:**

+ **DayZ Epoch developers, collaborators and contributors** (thank you guys for your excellent work!). [Visit them on github][epochdevs]
+ **Maca134** for orginal color vehicle script.
+ **Zupa** for the idea of painting vehicles in two different colors.
+ **0verHeaT** for script public release - this version we are updating for 1.0.6.1+ ([see original thread][overheatthread])
+ **raymix** for list of paintable vehicles for this script ([see original thread][raymixthread])

---

## TOC:
<!-- MarkdownTOC -->

- [Features](#features)
- [How to install](#how-to-install)
- [Battleye](#battleye)
- [infiSTAR](#infistar)
- [Changelog](#changelog)

<!-- /MarkdownTOC -->

---

<a name="features"></a>
## Features

+ Vehicles can be painted in two different colors
+ Only vehicles which you own can be painted (vehicles with key)
+ Only vehicles in `ColourVehicles` array can be painted
+ Script is designed to be used along with **Single currency**. Player will pay for painting vehicles
+ **UPDATED:** Color values are saved in the worldspace field in database
+ **NEW:** Vehicles can be unpainted to default state (default textures are loaded)
+ **UPDATED:** Vehicles can be painted using GUI with visual enhancements. Use PaintVehicles `defines.hpp` for defining custom GUI color scheme
+ **UPDATED:** Script is now fully compatible with **Virtual Garage** and **Vehicle Key Changer (VKC)** script thanks to @salival (**2017-08-22**). All scripts by @salival and this one prior update date should be upgraded to get much better player experience!

---

+ **What needs to be done:**
  + #todo: update vehicle classes in `ColourVehicles` array

---

![Paint Vehicles showcase](Preview/Showcase.png)

---

![Paint Vehicles DB showcase](Preview/db_preview.png)

---

<a name="how-to-install"></a>
## How to install
We are not using common way how is script included to current folder structure (like grab it and put to the root of mission folder) - that's why **read carefully, use repo folder structure (or similar) and compare tool like diffmerge!**

---

For **client side** we need these folders in the root of your `MPMissions\Dayz_Epoch_11.Chernarus` folder:

+ **actions:** we will store file with scroll action menu command `Paint vehicle` here
+ **compile:** we will store core script client files here
+ **Configs:** we will store defines && dialog config files for script GUI here
+ **gui:** we will store your "Money" or "Coins" picture here
+ **init:** we will load all compiles, variables and public eventhandlers from here

... and finaly files:

+ **description.ext:** we will load your defines and dialogs from here via `master.hpp` 
+ **init.sqf:** we will load your custom compiles, variables and public EH from here

---

For **server side** (`dayz_server`) we need to touch these files:

+ **compiles\server_paintVehicles.sqf** (needs to be created)
+ **compiles\server_updateObject.sqf**
+ **system\server_monitor.sqf**
+ **init\server_functions.sqf**

---

<a name="battleye"></a>
## Battleye

```c
// Add an exception to publicvariable.txt
!="PVDZE_veh_Color"
```

<a name="infistar"></a>
## infiSTAR

```c
// Add an exception to allowed dialogs
571113
```

---

**_...that's all, Have Fun!!_**

---

<a name="changelog"></a>
## Changelog

| Date         | Version | Description                                                                                                                        |
| :---         | :---    | :---                                                                                                                               |
| [2017-05-22] | v1.0    | Initial release                                                                                                                    |
| [2017-05-27] | v1.1    | Optimized compiles: 5 files reduced to 1 main file.<br>_See changes:_ [[commit ae29c13][update1]]                                  |
| [2017-08-20] | v1.2    | Regular code maintenance.<br>_See changes:_ [[commit 682f99a][update2]] , [[commit 7cd8fce][update3]]                              |
| [2017-10-23] | v1.3    | Roll back to full version of player_forceSave (uniCoins fix: Issue not related to script itself)                                   |
| [2017-12-04] | v1.4    | Safer manipulation with data sending to server. Basic defines fix - from sqf to hpp.<br>_See changes:_ [[commit 2735dea][update4]] |

---

[scriptthread]: https://epochmod.com/forum/topic/43949-re-release-paint-vehicles-script-using-single-currency-updated-to-1061-and-upgraded/ "Go to source"
[epochdevs]: https://github.com/EpochModTeam/DayZ-Epoch "Go to source"
[overheatthread]: https://epochmod.com/forum/topic/18624-release-paint-vehicles/ "Go to source"
[raymixthread]: https://epochmod.com/forum/topic/19651-extras-full-list-of-paintable-vehicles-for-paint-vehicles-script/ "Go to source"
[update1]: https://github.com/infobeny/PaintVehicles/commit/ae29c1349802095025c6d8296f97d7e594988150 "See changes"
[update2]: https://github.com/infobeny/PaintVehicles/commit/682f99ac5a4432e8b47035d030dede9c5002eb13 "See changes"
[update3]: https://github.com/infobeny/PaintVehicles/commit/7cd8fced0fc836f90d461508b75119395f8fa0e0 "See changes"
[update4]: https://github.com/infobeny/PaintVehicles/commit/2735dea1120566e926aacd3a5ada7f9c880f88af "See changes"
