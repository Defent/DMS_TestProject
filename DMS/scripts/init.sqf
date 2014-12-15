// Loads compiles 
// Made by Defent for Defents Mission System
// And for Numenadayz.com

if(isServer) then {

	findSafePos			= compile preprocessFileLineNumbers "DMS\mission\scripts\findSafePos.sqf";
	MM_Box1				 = compile preprocessFileLineNumbers "DMS\mission\crates\MM_Box1.sqf";
	DMS_CreateMarker 	= compile preprocessFileLineNumbers "DMS\mission\scripts\DMS_CreateMarker.sqf";
	//DZMSAddMinMarker 	= "mission\scripts\DZMSAddMinMarker.sqf";
	//spawnAI				= compile preprocessFileLineNumbers "mission\scripts\spawnAI.sqf";
	//DMS_CreateMarker	= compile preprocessFileLineNumbers "mission\scripts\DMS_CreateMarker.sqf";
	
	
	DMS_Loaded 			= false;
	
	execVM 	 "DMS\mission\scripts\DMS_Config.sqf";
	waitUntil {DMS_Loaded};

	execVM "DMS\mission\scripts\selectMission.sqf";
	
	
	diag_log "DMS: Functions loaded - starting the rest.";
};
