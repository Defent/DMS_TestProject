
=======
/* 
Creates a soldier.. what more do we need to know?
@FileOverlordCreatorofAllMasterCommanderAlphandtheOmega: Defent

Usage: 1 parm whitch is pos so
[_pos,_aiAmmount] spawn spawnAI.sqf;

Fixed by Grim. He can code and stuff.
*/

spawnAI = {
	private ["_group", "_pos","_soldier"];
	_pos  = _this select 0;
	_units = _this select 1;
	_group = createGroup RESISTANCE;
	_group setBehaviour "AWARE";
	_group setCombatMode "RED";
	//_group allowFleeing 0;
	
	for "_i" from 1 to _units do {
		_soldier = _group createUnit ["I_Soldier_EPOCH", [_pos select 0, _pos select 1, 0], [], 1, "Form"];
		removeAllAssignedItems _soldier;
		removeUniform _soldier;
		removeHeadgear _soldier;
		_soldier forceaddUniform "U_O_GhillieSuit";
		_soldier addVest "V_5_Epoch"; 
		_soldier addGoggles "G_Diving";
		for "_i" from 1 to 3 do {
		_soldier addItemToVest  "20Rnd_556x45_UW_Mag";
		};
		_soldier addWeapon "arifle_SDAR_F";
		_soldier setSkill 0.6;
		_soldier setRank "Private";
		{
		_soldier enableAI _x;
		}forEach ["TARGET","AUTOTARGET","MOVE","ANIM"];
		_soldier disableAI "FSM";
		_soldier allowDammage true;
	};
	/*
	if (side _group != RESISTANCE) {
	 deleteGroup _x;
	};
	*/
     	};
};

