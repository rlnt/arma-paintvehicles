// ===========================================================================
// PAINT VEHICLES (CLIENT SIDE)
// ===========================================================================
if (!isDedicated) then {
  diag_log "Loading custom client compiles";
  fnc_usec_selfactions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
  call compile preprocessFileLineNumbers "dayz_code\compile\player_paintVehicle.sqf";
};

// ===========================================================================
// BOTH
// ===========================================================================
IBEN_fnc_SC_uniCoins = compile preprocessFileLineNumbers "dayz_code\compile\IBEN_fnc_SC_uniCoins.sqf"; // paint vehicles
