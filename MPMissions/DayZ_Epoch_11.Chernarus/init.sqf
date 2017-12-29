// ===========================================================================
// FIND BELLOW PARTS IN YOUR INIT.SQF FILE:
// ===========================================================================

// ...

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf"; // @updated: custom variables.sqf
progressLoadingScreen 0.05;

// ...

progressLoadingScreen 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf"; // @updated: custom compiles.sqf

// ... rest of init.sqf code
