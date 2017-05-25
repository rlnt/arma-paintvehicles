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
