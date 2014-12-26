/* 
Creates a soldier.. what more do we need to know?
@FileOverlordCreatorofAllMasterCommanderAlphandtheOmega: Defent

Usage: 1 parm whitch is pos so
[_pos] spawn spawnIA.sqf

Fixed by Grim. He can code and stuff.
*/

if (!isServer) exitWith {};

private ["_group", "_pos","_soldier"];
_pos  = _this select 0;
 
 
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
 _soldier addMagazine ["20Rnd_556x45_UW_Mag",3];
 _soldier addWeapon "arifle_SDAR_F";

 _soldier setSkill 0.6;
 _soldier setRank "Private";
 {
 _soldier enableAI _x;
 }forEach ["TARGET","AUTOTARGET","MOVE","ANIM"];
 _soldier disableAI "FSM";
 _soldier allowDammage true;
