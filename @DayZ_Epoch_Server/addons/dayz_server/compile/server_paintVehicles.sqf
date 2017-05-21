private ["_object","_colorArr","_textArr","_pname","_PUID","_name","_pcolor","_pcolor2","_clrinit","_clrinit2","_texture","_texture2","_position","_worldspace","_fuel","_objectID","_key"];

_object = _this select 0;
_colorArr = _this select 1;
_textArr = _this select 2;
_pname = (name (_this select 3));
_PUID = (getPlayerUID (_this select 3));
_name = getText(configFile >> "cfgVehicles" >> (typeOf _object) >> "displayName");

call {
  if (count _textArr == 0) exitWith {
    _pcolor = _colorArr select 0;
    _pcolor2 = _colorArr select 1;

    _clrinit = format ["#(argb,8,8,3)color(%1)",_pcolor];
    _clrinit2 = format ["#(argb,8,8,3)color(%1)",_pcolor2];

    _object setVehicleInit "this setObjectTexture [0,"+str _clrinit+"];";
    _object setVehicleInit "this setObjectTexture [1,"+str _clrinit2+"];";

    processInitCommands;

    _object setVariable["Colour",_pcolor,true];
    _object setVariable["Colour2",_pcolor2,true];

    diag_log format ["VEHICLE PAINT: Player %1 (%2) has painted a %3!",_pname,_PUID,_name];

    _position = getPosATL _object;
    _worldspace = [getDir _object,_position,_pcolor,_pcolor2] call AN_fnc_formatWorldspace;

    _fuel = 0;
    _fuel = fuel _object;
    _objectID = _object getVariable ["ObjectID","0"];

    _key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
    _key call server_hiveWrite;

    // diag_log format ["=== VEHICLE PAINT DEBUG: NORMAL MODE: _pcolor [%1], _pcolor2 [%2]",_pcolor,_pcolor2];
  };
  if (count _colorArr == 0) exitWith {
    _texture = _textArr select 0;
    _texture2 = _textArr select 1;

    _object setVehicleInit "this setObjectTexture [0,"+str _texture+"];";
    _object setVehicleInit "this setObjectTexture [1,"+str _texture2+"];";

    processInitCommands;

    _pcolor = "0";
    _pcolor2 = "0";

    _object setVariable["Colour",_pcolor,true];
    _object setVariable["Colour2",_pcolor2,true];

    diag_log format ["VEHICLE PAINT: Player %1 (%2) has reset painting of %3!",_pname,_PUID,_name];

    _position = getPosATL _object;
    _worldspace = [getDir _object,_position,_pcolor,_pcolor2] call AN_fnc_formatWorldspace;

    _fuel = 0;
    _fuel = fuel _object;
    _objectID = _object getVariable ["ObjectID","0"];

    _key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
    _key call server_hiveWrite;

    // diag_log format ["=== VEHICLE PAINT DEBUG: RESET MODE: _pcolor [%1], _pcolor2 [%2]",_pcolor,_pcolor2];
  };

};
