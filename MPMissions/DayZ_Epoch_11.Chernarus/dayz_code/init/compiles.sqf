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
  VehicleColorPaint = compile preprocessFileLineNumbers "dayz_code\compile\paint_vehicleColor.sqf";
  VehicleColorReset = compile preprocessFileLineNumbers "dayz_code\compile\paint_vehicleColorReset.sqf";
  VehicleColorUpdate = compile preprocessFileLineNumbers "dayz_code\compile\paint_vehicleColorUpdate.sqf";
  VehicleColorUpdate2 = compile preprocessFileLineNumbers "dayz_code\compile\paint_vehicleColorUpdate2.sqf";
  player_paint = compile preprocessFileLineNumbers "dayz_code\compile\player_paint.sqf";
};

// ===========================================================================
// BOTH
// ===========================================================================
fnc_SC_uniCoins = compile preprocessFileLineNumbers "dayz_code\compile\fnc_SC_uniCoins.sqf";
