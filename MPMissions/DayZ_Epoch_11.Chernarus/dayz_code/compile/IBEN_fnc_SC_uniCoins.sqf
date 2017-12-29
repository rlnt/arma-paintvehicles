// ===========================================================================
// FUNCTIONS LIBRARY >> SINGLE CURRENCY >> IBEN_fnc_SC_uniCoins.sqf
// ===========================================================================
// @Function name: IBEN_fnc_SC_uniCoins
// ===========================================================================
// @Info:
//  - Created by @iben for DayzEpoch 1.0.6.1+
//  - Version: 1.2, Last Update [2017-06-14]
//  - Credits:
//   * DayZ Epoch developers, collaborators and contributors
//     (thank you guys for your excellent work!)
//   * @Zupa: original SC concept creator and author of Universal Dev functions
//     for 1.0.5 version.
//     (see https://epochmod.com/forum/topic/15463-devs-universal-removeadd-coins-function/)
//   * @salival for adapting @Zupa's concept to 1.0.6+ version and great community support
//     (see: https://epochmod.com/forum/topic/43331-zsc-for-epoch-106-and-overwatch-025/)
//   * ** All great guys from Epoch comunity participating on SC and banking concept **
//     (see: https://epochmod.com/forum/forum/56-gold-coin-based-single-currency-banking-system/)
// @Remarks:
//  - It's unified fnc for money proccessing. You can use 4 keywors in combination
//    to achieve desired effect
//    * Keywords: "add" / "remove", "cache" / "bank"
//  - Epoch Forum thread: https://epochmod.com/forum/topic/44006-re-release-v11-fn_sc_unicoins-dev-function-for-single-currency-rewritten-and-updated-for-epoch-1061/
// @Parameters:
//  - '_player': (player, _killer...etc)                              | object
//   '_amount' : (1000, 50000)                                        | number
//   '_action' : (Keywords: 'add' / 'remove')                         | string
//   '_target' : (Keywords: 'cache' / 'bank')                         | string
// @Prerequisities:
//  - none
// @Example:
//  - #Example01: Remove 5.000 Coins from player's wallet:
//    * [player,5000,'remove','cache'] call IBEN_fnc_SC_uniCoins;
//  - #Example02: Add 1.000 Coins to player's wallet:
//    * [player,1000,'add','cache'] call IBEN_fnc_SC_uniCoins;
//  - #Example03: Remove 15.000 Coins from player's bank account:
//    * [player,15000,'remove','bank'] call IBEN_fnc_SC_uniCoins;
//  - #Example03: Add 50.000 Coins to player's bank account:
//    * [player,50000,'add','bank'] call IBEN_fnc_SC_uniCoins;
// @Returns:
//  - Boolean
// ===========================================================================
// @Parameters Legend:
//  * _a  = _player
//  * _b  = _amount
//  * _c  = _action
//  * _d  = _target
//  * _fa = _fnc_SC_uniCoinsDebug
//  * _fc = _fnc_previewCoins
//  * _fd = _fnc_removeCoins
//  * _fe = _fnc_addCoins
//  * _g  = _gvar
//  * _m  = _msg
//  * _n  = _money
//  * _p  = _wealth
//  * _q  = _removed
//  * _r  = _result
//  * _s  = _added
//  * _u  = _newWealth
//  * _xd = _Tdebug
// ===========================================================================
// IBEN_fnc_SC_uniCoins = {
  #ifdef __DEBUG__
  #define MPR "Error! Too many parameters in function"
  #define MPN "Error! Player is not recognized"
  #define MPS "Error! Player cannot be string"
  #define MAS "Error! Amount is not a number"
  #define SRC "IBEN_fnc_SC_uniCoins"
  #endif
  // =========================================================================

  private ["_a","_b","_c","_d"];
  _a = _this select 0;
  _b = _this select 1;
  _c = _this select 2;
  _d = _this select 3;

  // === DEBUG ===============================================================
  #ifdef __DEBUG__
    private "_fa";
    _fa = {
      private ["_r","_m"];
      _m = "nil";
      _r = false;
      call {
        if ((count _this) != 4) exitWith {_m = MPR;_r = false};
        if (isNil "_a") exitWith {_m = MPN;_r = false};
        if (typeName _a == "STRING") exitWith {_m = MPS;_r = false};
        if (typeName _b != "SCALAR") exitWith {_m = MAS;_r = false};
        _r = true
      };

      if !(_r) then {
       player globalChat format ["%1",_m];
       diag_log format ["=== [%1] %2",SRC,_m];
       _r = false
      };

      _r
    };
    if !(call  _fa) exitWith {hintSilent "[IBEN_fnc_SC_uniCoins] Error!"};
  #endif
  // =========================================================================

  private ["_g","_r"];
  _g = [Z_bankVariable, Z_moneyVariable] select (_d == "cache");
  _r = false;

  private "_fc";
  _fc = {
    private ["_n"];
    _n = 0;
    _n = _a getVariable [_g, 0];
    _n
  };

  private "_fd";
  _fd = {
    private ["_p","_q"];
    _p = call _fc;
    _q = false;
    if (_b > 0) then {
      if (_p < _b) then {
        _q = false;
      } else {
        _a setVariable [_g, _p - _b, true];
        _q = true;
        call player_forceSave;
      };
    } else {
      _q = true;
    };
    _q
  };

  private "_fe";
  _fe = {
    private ["_p","_s","_u"];
    _p = call _fc;
    _s = false;
    _a setVariable [_g, _p + _b, true];
    call player_forceSave;
    _u = call _fc;
    if (_u >= _p) then {_s = true;};
    _s
  };

  call {
    if (_c == "remove") exitWith {
      _r = [false,true] select (call _fd);
    };
    if (_c == "add") exitWith {
      _r = [false,true] select (call _fe);
    };
    _r = false; // default
  };

  _r

// };

// === :: FUNCTIONS LIBRARY >> SINGLE CURRENCY >> IBEN_fnc_SC_uniCoins.sqf :: END
