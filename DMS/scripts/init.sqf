// Loads compiles 
// Made by Defent for Defents Mission System
// And for Numenadayz.com

if(isServer) then {

	findSafePos			= compile preprocessFileLineNumbers "mission\scripts\findSafePos.sqf";
	// will be random boxes later..
	createBox				= compile preprocessFileLineNumbers "mission\crates\MM_Box1.sqf";
	DMS_CreateMarker 		= compile preprocessFileLineNumbers "mission\scripts\DMS_CreateMarker.sqf";
	SpawnAI 			= compile preprocessFileLineNumbers "mission\scripts\spawnAI.sqf";
	selectMission 			= compile preprocessFileLineNumbers "mission\scripts\selectMission.sqf";
	//MissionCompleted 		= compile preprocessFileLineNumbers "mission\scripts\MissionCompleted.sqf";
	broadcastHint 		= compile preprocessFileLineNumbers "mission\scripts\broadcastHint.sqf";
	
	// not fully loaded yet
	DMS_Loaded 			= false;

	execVM 	 "mission\scripts\DMS_Config.sqf";
	waitUntil {DMS_Loaded};

	execVM "mission\scripts\selectMission.sqf";
	
	
	diag_log "DMS: Functions loaded - starting the rest of the script.";
	
	
};
