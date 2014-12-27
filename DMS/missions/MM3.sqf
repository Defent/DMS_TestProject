private ["_crate","_pos","_missname","_aiAmmount","SpawnAI","_hint"];

/*
_playerClose = false;
_mainTimer = true;
//_missStartTime = floor(time);
*/

// associate pos with find safe pos
_pos = call findSafePos;
_aiAmmount = 5;

_missname = "Main Mission 3";
diag_log format["DMS: Main Mission 3 started at [%1]",_pos];

_hint = format ["<t color='#ff0000'>Main Mission 3.</t>==============</br>Mission now starting! Check your map!"];
[_hint] call broadcastHint;

// Spawn Marker
[_pos,_missname] execVM "mission\scripts\DMS_CreateMarker.sqf";

// Spawn Box
_crate = createVehicle ["Box_NATO_Support_F",[(_pos select 0) - 10, _pos select 1,0],[], 0, "CAN_COLLIDE"];
[_crate,5] call createBox;
sleep 2;
//_crate = [_pos,40,4,2,2] execVM "mission\crates\MM_Box1.sqf";

// spawn AI
//[_pos,_aiAmmount] call SpawnAI;
SpawnAI = [_pos,_aiAmmount] call SpawnAI;



waitUntil{{isPlayer _x && _x distance _pos < 30  } count playableUnits > 0}; 

[_hint] call broadcastHint;


deleteMarker "DMS_MainMarker"; 
deleteMarker "DMS_MainDot"; 
//_crate setDamage 1;
deleteVehicle SpawnAI;
{deleteVehicle _x}count units SpawnAI;
deleteGroup SpawnAI;


[] call selectMission;
