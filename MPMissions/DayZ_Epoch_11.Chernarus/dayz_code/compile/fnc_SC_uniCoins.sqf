// ===========================================================================
// SINGLE CURRENCY (@money: universal dev function: add/remove cache/bank coins)
// ===========================================================================
// @credits:
//   - DayZ Epoch developers, collaborators and contributors
//     (thank you guys for your excellent work!)
//   - @Zupa: original SC concept creator and author of Universal Dev functions
//     for 1.0.5 version.
//     (see https://epochmod.com/forum/topic/15463-devs-universal-removeadd-coins-function/)
//   - @salival for adapting @Zupa's concept to 1.0.6+ version and great community support
//     (see: https://epochmod.com/forum/topic/43331-zsc-for-epoch-106-and-overwatch-025/)
// ===========================================================================
// Reworked for DayZ Epoch 1.0.6.1+ by @iben+
// ===========================================================================
// @parameters:
//   [_player,_amount,_action,_target] call fnc_SC_uniCoins;
//   '_player' : object : player, _killer...etc
//   '_amount' : number : 1000
//   '_action' : string : 'add'   / 'remove'
//   '_target' : string : 'cache' / 'bank'
// @usage:
//   === Example 01: Remove 5.000 Coins from player's wallet:
//   [player,5000,'remove','cache'] call fnc_SC_uniCoins;
//   === Example 02: Add 1.000 Coins to playe's bank account
//   [player,1000,'add','bank'] call fnc_SC_uniCoins;
// ===========================================================================
//  @important:
//   + DayZ Epoch 'local_eventKill.sqf' with code for testing is available:
//     https://gist.github.com/infobeny/0fa8ff0f0a50ca7877a26e0951ac358e
// ===========================================================================
private ["_player","_amount","_action","_target","_gvar","_result",
         "_fnc_previewCoins","_fnc_removeCoins","_fnc_addCoins"];

_player = _this select 0;
_amount = _this select 1;
_action = _this select 2;
_target = _this select 3;

_gvar = [Z_bankVariable, Z_moneyVariable] select (_target == "cache");
_result = false;

_fnc_previewCoins = {
  private ["_money"];
  _money = 0;
  _money = _player getVariable [_gvar, 0];
  _money
};

_fnc_removeCoins = {
  private ["_wealth","_removed"];
  _wealth = call _fnc_previewCoins;
  _removed = false;
  if (_amount > 0) then {
    if (_wealth < _amount) then {
      _removed = false;
    } else {
      _player setVariable [_gvar, _wealth - _amount, true];
      _removed = true;
      call player_forceSave;
    };
  } else {
    _removed = true;
  };
  _removed
};

_fnc_addCoins = {
  private ["_wealth","_added","_newWealth"];
  _wealth = call _fnc_previewCoins;
  _added = false;
  _player setVariable [_gvar, _wealth + _amount, true];
  call player_forceSave;
  _newWealth = call _fnc_previewCoins;
  if (_newWealth >= _wealth) then {_added = true;};
  _added
};

if ((!isNil "_action") && (!isNil "_target")) then {
  call {
    if (_action == "remove") exitWith {
      if (call _fnc_removeCoins) then {_result = true;} else {_result = false;};
    };
    if (_action == "add") exitWith {
      if (call _fnc_addCoins) then {_result = true;} else {_result = false;};
    };
    _result = false; // default
  };
};

_result
