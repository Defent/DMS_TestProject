private ["_aiSpawn","_crate","_pos","_playerClose","_mainTimer","_missname","_timeOut","_playerNearby","_startTime","_clearMission"];

/*
_playerClose = false;
_mainTimer = true;
//_missStartTime = floor(time);
*/

// associate pos with find safe pos fnc
_pos = call findSafePos;
_missname = "Main Mission 1";
diag_log format["DMS: Main Mission 1 started at [%1]",_pos];

hint format["Main ========== </br> Mission stuff happens who knows what."];

// Spawn Marker
[_pos,_missname] execVM "mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = createVehicle ["Pelican_EPOCH",[(_pos select 0) - 10, _pos select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "mission\crates\MM_Box1.sqf";

//_crate = [_pos,40,4,2,2] execVM "mission\crates\MM_Box1.sqf";

// spawn AI
[_pos] execVM "mission\scripts\spawnAI.sqf";
sleep 2;

waitUntil {
sleep 5; 
({isPlayer _x && _x distance _pos <= 30} count playableUnits > 0) && ({alive _x});
};

hint format["Mission is over, quitting mission."];
deleteMarker "DMS_MainMarker"; 
deleteMarker "DMS_MainDot"; 
deleteVehicle _crate;

sleep 10;
execVM "\mission\selectMissions.sqf";
