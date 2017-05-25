// ===========================================================================
// @PAINT VEHICLES
// ===========================================================================
VehicleColorPaint = {
  private ["_pcolor","_pcolor2"];
  _pcolor = ""+str((sliderPosition 5700) / 10)+","+str((sliderPosition 5701) / 10)+","+str((sliderPosition 5702) / 10)+",1";
  _pcolor2 = ""+str((sliderPosition 6700) / 10)+","+str((sliderPosition 6701) / 10)+","+str((sliderPosition 6702) / 10)+",1";
  if !([player,PV_Price,'remove','cache'] call fnc_SC_uniCoins) exitWith {
    format ["You need %1 %2 to repaint your vehicle!", [PV_Price] call BIS_fnc_numberText, CurrencyName] call dayz_rollingMessages;
  };
  [format ["%1 %2 removed from your wallet! Let's start painting....",[PV_Price] call BIS_fnc_numberText, CurrencyName],1] call dayz_rollingMessages;
  PVDZE_veh_Color = [VehicleToPaint,[_pcolor,_pcolor2],[],player];
  publicVariableServer "PVDZE_veh_Color";
};

VehicleColorReset = {
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
};

VehicleColorUpdate = {
  ((uiNamespace getVariable "PaintVehicleDialog") displayCtrl 5704)
  ctrlSetBackgroundColor
    [
      ((sliderPosition 5700) / 10),
      ((sliderPosition 5701) / 10),
      ((sliderPosition 5702) / 10),
      1
    ];
};

VehicleColorUpdate2 = {
  ((uiNamespace getVariable "PaintVehicleDialog") displayCtrl 6704)
  ctrlSetBackgroundColor
    [
      ((sliderPosition 6700) / 10),
      ((sliderPosition 6701) / 10),
      ((sliderPosition 6702) / 10),
      1
    ];
};

player_paint = {
  private ["_vehicle","_coins","_txt"];
  VehicleToPaint = _this select 3;
  _vehicle = getText(configFile >> "cfgVehicles" >> (typeOf VehicleToPaint) >> "displayName");
  _coins = 'dayz_code\gui\ZSC\Coins.paa'; // @update path!
  createdialog "PaintVehicleDialog";
  _txt = format
    [
      "<t>Repainting your %1 will cost you %2 <img image='%3'/></t>",
      _vehicle,
      [PV_Price] call BIS_fnc_numberText,
      _coins
    ];
  ((uiNamespace getVariable "PaintVehicleDialog") displayCtrl 5703) ctrlSetStructuredText parseText _txt;
};
