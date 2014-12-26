private ["_aiSpawn","_crate","_pos","_playerClose","_mainTimer","_missname","_timeOut","_playerNearby","_startTime","_clearMission","_aiAmmount"];

/*
_playerClose = false;
_mainTimer = true;
//_missStartTime = floor(time);
*/

// associate pos with find safe pos fnc
_pos = call findSafePos;
_aiAmmount = 5;


_missname = "Main Mission 1";
diag_log format["DMS: Main Mission 1 started at [%1]",_pos];

hint parseText format["Main ========== </br> Mission stuff happens who knows what."];

// Spawn Marker
[_pos,_missname] execVM "mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = createVehicle ["Box_NATO_Support_F",[(_pos select 0) - 10, _pos select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "mission\crates\MM_Box1.sqf";

//_crate = [_pos,40,4,2,2] execVM "mission\crates\MM_Box1.sqf";

// spawn AI
//[_pos,_aiAmmount] call SpawnAI;
[_pos,_aiAmmount] call SpawnAI;
sleep 2;


[_pos] call MissionCompleted;


hint parseText format["Mission is over, quitting mission."];
deleteMarker "DMS_MainMarker"; 
deleteMarker "DMS_MainDot"; 
deleteVehicle _crate;

sleep 10;

execVM "mission\scripts\selectMission.sqf";
