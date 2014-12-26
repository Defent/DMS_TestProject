private ["_aiSpawn","_crate","_pos","_playerClose","_mainTimer","_missname","_aiAmmount"];

/*
_playerClose = false;
_mainTimer = true;
//_missStartTime = floor(time);
*/

// associate pos with find safe pos
_pos = call findSafePos;
_aiAmmount = 5;

 _missname = "Main Mission 4";
diag_log format["DMS: Main Mission 4 started at [%1]",_pos];

hint parseText format["Main ========== </br> Mission stuff happens who knows what."];

// Spawn Marker
[_pos,_missname] execVM "mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = createVehicle ["Box_NATO_Support_F",[(_pos select 0) - 10, _pos select 1,0],[], 0, "CAN_COLLIDE"];

// spawn AI
[_pos,_aiAmmount] call SpawnAI;

/*

Loot at 0.2.6 EMS if you want to know how to make detection close to mission.

Detection is to be implemented next update. This is an early access alpha LOL. 

*/


sleep 15;
hint parseText format["Mission is over, quitting mission."];
deleteMarker "DMS_MainMarker"; 
 deleteMarker "DMS_MainDot"; 
deleteVehicle _crate;

sleep 10;
execVM "\mission\selectMissions.sqf";
