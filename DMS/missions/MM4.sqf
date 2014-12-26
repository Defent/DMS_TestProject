private ["_crate","_pos","_missname","_aiAmmount","_missTitle","_missText"];

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

_missTitle = "<t color='#ff0000'>Main Mission 4.</t>";
_missText = "</br> Mission now starting! Check your map!";
hint parseText (_missTitle + _missText);

// Spawn Marker
[_pos,_missname] execVM "mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = createVehicle ["Box_NATO_Support_F",[(_pos select 0) - 10, _pos select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "mission\crates\MM_Box1.sqf";
sleep 2;
//_crate = [_pos,40,4,2,2] execVM "mission\crates\MM_Box1.sqf";

// spawn AI
//[_pos,_aiAmmount] call SpawnAI;
[_pos,_aiAmmount] call SpawnAI;



[_pos] call MissionCompleted;
call MissionCleanup;

hint parseText format["Mission is over, quitting mission."];

call selectMission;

