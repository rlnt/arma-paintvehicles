// ===========================================================================
// @PAINT VEHICLES
// ===========================================================================
private ["_object","_colorArr","_textArr","_pname","_PUID","_name","_colour","_colour2","_clrinit","_clrinit2","_texture","_texture2","_position","_worldspace","_fuel","_objectID","_key"];

_object = _this select 0;
_colorArr = _this select 1;
_textArr = _this select 2;
_pname = (name (_this select 3));
_PUID = (getPlayerUID (_this select 3));
_name = getText(configFile >> "cfgVehicles" >> (typeOf _object) >> "displayName");

call {
  if (count _textArr == 0) exitWith {
    _colour = (toString (_colorArr select 0));
    _colour2 = (toString (_colorArr select 1));

    if (isNil "_colour") then {_colour = "0";};
    if (isNil "_colour2") then {_colour2 = "0";};

    _clrinit  = format ["#(argb,8,8,3)color(%1)",_colour];
    _clrinit2 = format ["#(argb,8,8,3)color(%1)",_colour2];

    _object setVehicleInit "this setObjectTexture [0,"+str _clrinit+"];";
    _object setVehicleInit "this setObjectTexture [1,"+str _clrinit2+"];";

    processInitCommands;

    _object setVariable["Colour",_colour,true];
    _object setVariable["Colour2",_colour2,true];

    diag_log format ["VEHICLE PAINT: Player %1 (%2) has painted a %3!",_pname,_PUID,_name];

    _position = getPosATL _object;
    _worldspace = [getDir _object,_position,_colour,_colour2] call AN_fnc_formatWorldspace;

    _fuel = 0;
    _fuel = fuel _object;
    _objectID = _object getVariable ["ObjectID","0"];

    _key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
    _key call server_hiveWrite;

    // diag_log format ["=== VEHICLE PAINT DEBUG: NORMAL MODE: _colour [%1], _colour2 [%2]",_colour,_colour2];
  };
  if (count _colorArr == 0) exitWith {
    _texture = (toString (_textArr select 0));
    _texture2 = (toString (_textArr select 1));

    _object setVehicleInit "this setObjectTexture [0,"+str _texture+"];";
    _object setVehicleInit "this setObjectTexture [1,"+str _texture2+"];";

    processInitCommands;

    _colour = "0";
    _colour2 = "0";

    _object setVariable["Colour",_colour,true];
    _object setVariable["Colour2",_colour2,true];

    diag_log format ["VEHICLE PAINT: Player %1 (%2) has reset painting of %3!",_pname,_PUID,_name];

    _position = getPosATL _object;
    _worldspace = [getDir _object,_position,_colour,_colour2] call AN_fnc_formatWorldspace;

    _fuel = 0;
    _fuel = fuel _object;
    _objectID = _object getVariable ["ObjectID","0"];

    _key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
    _key call server_hiveWrite;

    // diag_log format ["=== VEHICLE PAINT DEBUG: RESET MODE: _colour [%1], _colour2 [%2]",_colour,_colour2];
  };

};
