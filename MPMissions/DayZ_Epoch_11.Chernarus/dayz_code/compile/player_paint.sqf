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
