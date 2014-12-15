/* 

Creates a soldier.. what more do we need to know?
@FileOverlordCreatorofAllMasterCommanderAlphandtheOmega: Defent

*/

if (!isServer) exitWith {};

private ["_group", "_pos","_arrUnits","_ammountAI","_soldier"];

	
	
	_group = createGroup RESISTANCE;
	_group setBehaviour "AWARE";
	_group setCombatMode "RED";

	_soldier = _group createUnit ["I_Soldier_EPOCH", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
	removeAllAssignedItems _soldier;
	removeUniform _soldier;
	removeHeadgear _soldier;
	_soldier forceAddUniform  "U_ghillie1_uniform";;
	_soldier addVest "V_RebreatherB"; 
	//DMS_AiList addUniform "U_B_Wetsuit";
	_soldier addGoggles "G_Diving";
	_soldier addMagazine "20Rnd_556x45_UW_Mag";
	_soldier addWeapon "arifle_SDAR_F";
	_soldier addMagazine "20Rnd_556x45_UW_Mag";
	_soldier addMagazine "20Rnd_556x45_UW_Mag";

	_soldier setSkill 0.6;
	_soldier setRank "Private";
	_soldier enableAI "TARGET";
	_soldier enableAI "AUTOTARGET";
	_soldier enableAI "MOVE";
	_soldier enableAI "ANIM";
	_soldier disableAI "FSM";
	_soldier allowDammage true;
	
	
	//untested
	//_soldier setVariable ["LASTLOGOUT_EPOCH", diag_tickTime + 14400000, sanna];
	
