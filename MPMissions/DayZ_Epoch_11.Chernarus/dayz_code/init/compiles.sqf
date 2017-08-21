// ===========================================================================
// SERVER SIDE
// ===========================================================================
if (isServer) then {
  diag_log "Loading custom server compiles";
};

// ===========================================================================
// CLIENT SIDE
// ===========================================================================
if (!isDedicated) then {
  diag_log "Loading custom client compiles";
  call compile preprocessFileLineNumbers "dayz_code\compile\player_paintVehicle.sqf";
};

// ===========================================================================
// BOTH
// ===========================================================================
fnc_SC_uniCoins = compile preprocessFileLineNumbers "dayz_code\compile\fnc_SC_uniCoins.sqf";

// ===========================================================================
// BOTH :: [DEBUG ONLY]
// ===========================================================================
IBEN_fnc_codePerformace = {
  private ["_a","_b"];
  _a = _this select 0;
  _b = _this select 1;
  player globalChat format ["src: [%1], Exec time [%2]",_a,_b];
};
