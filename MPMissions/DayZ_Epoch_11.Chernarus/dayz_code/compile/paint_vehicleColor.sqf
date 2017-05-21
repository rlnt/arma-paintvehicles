private ["_pcolor","_pcolor2"];

_pcolor = ""+str((sliderPosition 5700) / 10)+","+str((sliderPosition 5701) / 10)+","+str((sliderPosition 5702) / 10)+",1";
_pcolor2 = ""+str((sliderPosition 6700) / 10)+","+str((sliderPosition 6701) / 10)+","+str((sliderPosition 6702) / 10)+",1";

if !([player,PV_Price,'remove','cache'] call fnc_SC_uniCoins) exitWith {
  format ["You need %1 %2 to repaint your vehicle!", [PV_Price] call BIS_fnc_numberText, CurrencyName] call dayz_rollingMessages;
};

[format ["%1 %2 removed from your wallet! Let's start painting....",[PV_Price] call BIS_fnc_numberText, CurrencyName],1] call dayz_rollingMessages;

PVDZE_veh_Color = [VehicleToPaint,[_pcolor,_pcolor2],[],player];
publicVariableServer "PVDZE_veh_Color";
