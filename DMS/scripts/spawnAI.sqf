/* 

Creates a soldier.. what more do we need to know?
@FileOverlordCreatorofAllMasterCommanderAlphandtheOmega: Defent

*/

if (!isServer) exitWith {};

private ["_group", "_pos","_arrUnits","_ammountAI","DMS_Ai","_posX","_posY"];
_pos 	= _this select 1;
// used for patrols
//_posX 		= _pos select 0;
//_posY 		= _pos select 1;
	
	// create a group for the unit
	_group = createGroup RESISTANCE;

	// create the unit
	DMS_Ai = _group createUnit ["IDMS_Ai_EPOCH", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
	removeAllAssignedItems DMS_Ai;
	removeUniform DMS_Ai;
	removeHeadgear DMS_Ai;
	[DMS_Ai] joinSilent _group;
	
	// gear and stuff
	DMS_Ai forceAddUniform  "U_ghillie1_uniform";;
	DMS_Ai addVest "V_RebreatherB"; 
	//DMS_AiList addUniform "U_B_Wetsuit";
	DMS_Ai addGoggles "G_Diving";
	DMS_Ai addMagazine "20Rnd_556x45_UW_Mag";
	DMS_Ai addWeapon "arifle_SDAR_F";
	DMS_Ai addMagazine "20Rnd_556x45_UW_Mag";
	DMS_Ai addMagazine "20Rnd_556x45_UW_Mag";

	// behaviour
	DMS_Ai setBehaviour "AWARE";
	DMS_Ai setCombatMode "RED";
	DMS_Ai setSkill 0.6;
	DMS_Ai setRank "Private";
	DMS_Ai enableAI "TARGET";
	DMS_Ai enableAI "AUTOTARGET";
	DMS_Ai enableAI "MOVE";
	DMS_Ai enableAI "ANIM";
	DMS_Ai disableAI "FSM";
	DMS_Ai allowDammage true;
	
	
	//untested
	//DMS_Ai setVariable ["LASTLOGOUT_EPOCH", diag_tickTime + 14400000, sanna];
	
