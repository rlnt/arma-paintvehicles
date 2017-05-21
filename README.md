# Paint Vehicles

---

[Go to Epoch forum thread][scriptthread]

---

## Credits

**All credits goes to its original authors:**

+ **DayZ Epoch developers, collaborators and contributors** (thank you guys for your excellent work!). [Visit them on github][epochdevs]
+ **Maca134** for orginal colour vehicle script.
+ **Zupa** for the idea of painting vehicles in two different colours.
+ **0verHeaT** for script public release - this version we are updating for 1.0.6.1+ ([see original thread][overheatthread])
+ **raymix** for list of paintable vehicles for this script ([see original thread][raymixthread])

---

## TOC:
<!-- MarkdownTOC -->

- [Features](#features)
- [How to install](#how-to-install)
- [Battleye](#battleye)
- [infiSTAR](#infistar)

<!-- /MarkdownTOC -->

---

<a name="features"></a>
## Features

+ Vehicles can be painted in two different colours
+ Only vehicles which you own can be painted (vehicles with key)
+ Only vehicles in `ColourVehicles` array can be painted
+ Script is designed to be used along with **Single currency**
+ **UPDATED:** Color values are saved in the worldspace field in database
+ **NEW:** Vehicles can be unpainted to default state (default textures are loaded)
+ **UPDATED:** Vehicles can be painted using GUI with visual enhancements

---

+ **What needs to be done:**
  + #todo: update vehicle classes in `ColourVehicles` array
  + #todo: compability test with `Virtual Garage` script (theduke variant)

---

![Paint Vehicles showcase](Showcase.png)

---

![Paint Vehicles DB showcase](db_preview.png)

---

<a name="how-to-install"></a>
## How to install
We are not using common way how is script included to current folder structure (like grab it and put to the root of mission folder) - that's why **read carefully, use repo folder structure (or similar) and use compare tool like diffmerge!**

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

[scriptthread]: https://epochmod.com/forum/ "Go to source"
[epochdevs]: https://github.com/EpochModTeam/DayZ-Epoch "Go to source"
[overheatthread]: https://epochmod.com/forum/topic/18624-release-paint-vehicles/ "Go to source"
[raymixthread]: https://epochmod.com/forum/topic/19651-extras-full-list-of-paintable-vehicles-for-paint-vehicles-script/ "Go to source"
