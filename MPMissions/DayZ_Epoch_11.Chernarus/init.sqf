// ===========================================================================
// DAYZ VAR SETTINGS
// ===========================================================================
dayZ_instance = 11;
dayZ_serverName = "";

// ...

enableRadio false;
enableSentences false;

// ===========================================================================
// EPOCH VAR SETTINGS
// ===========================================================================
#include "\z\addons\dayz_code\configVariables.sqf"
dayz_paraSpawn = false;
DZE_BackpackAntiTheft = false;

// ...

EpochUseEvents = false;
EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
// EPOCH CONFIG VARIABLES END //

diag_log 'dayz_preloadFinished reset';
dayz_preloadFinished=nil;

// ...

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf"; // @updated: custom variables.sqf
progressLoadingScreen 0.05;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\publicEH.sqf"; // @updated: custom publicEH.sqf
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf"; // @updated: custom compiles.sqf

// ... rest of init.sqf code
