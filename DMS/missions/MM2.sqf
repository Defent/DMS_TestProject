private ["_aiSpawn","_crate","_pos","_playerClose","_mainTimer","_missname"];

/*
_playerClose = false;
_mainTimer = true;
//_missStartTime = floor(time);
*/

// associate pos with find safe pos
_pos = call findSafePos;
_missname = "Main Mission 2";
diag_log format["DMS: Main Mission 2 started at [%1]",_pos];

hint format["Main ========== </br> Mission stuff happens who knows what."];

// Spawn Marker
[_pos,_missname] execVM "DMS\mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = [_pos,40,4,2,2] execVM "DMS\mission\crates\MM_Box1.sqf";

// spawn AI
_aiSpawn = [_pos,80,6,6,1] execVM "DMS\mission\scripts\spawnAI.sqf";

/*

Loot at 0.2.6 EMS if you want to know how to make detection close to mission.

Detection is to be implemented next update. This is an early access alpha LOL. 

*/


sleep 15;
hint format["Mission is over, quitting mission."];
deleteMarker "DMS_MainMarker"; 
 

sleep 200;
execVM "DMS\mission\selectMissions.sqf";
