private ["_textArr","_playerName","_PUID","_vehName","_texture1","_texture2"];

_textArr = getArray (configFile >> "cfgVehicles" >> (typeOf VehicleToPaint) >> "hiddenSelectionsTextures");
_playerName = name player;
_PUID = getPlayerUID player;
_vehName = getText(configFile >> "cfgVehicles" >> (typeOf VehicleToPaint) >> "displayName");

// diag_log format ["=== VEHICLE PAINT DEBUG: Texture for [%1] to reset: [%2]",_vehName,_textArr];

if ((count _textArr) == 0) exitWith {
  diag_log format ["=== VEHICLE PAINT DEBUG: No texture for [%1] to reset",_vehName];
};

_texture1 = _textArr select 0;
_texture2 = _textArr select 1;

PVDZE_veh_Color = [VehicleToPaint,[],[_texture1,_texture2],player];
publicVariableServer "PVDZE_veh_Color";
