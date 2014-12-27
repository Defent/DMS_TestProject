if(isServer) then {

private ["_completed","_cleanup"];

_completed = false;
_cleanup   = false;


	MissionCompleted = {
		private["_missionPos"];
		_missionPos = _this select 0;
		_cleanUp = _this select 1;
		

		waitUntil{{isPlayer _x && _x distance _missionPos < 30  } count playableUnits > 0}; 
		_missionPos spawn CleanUpFnc;
		
		_completed	 = true;
	};
	
    if (!((typeOf _object) in ["Box_NATO_Support_F"] then {
        _object setVariable["VarCleanUp",true];
    };
	
	Fnc_Clean = {
		if (_completed) do {
			_this enableSimulation false;
			_this removeAllMPEventHandlers "mpkilled";
			_this removeAllMPEventHandlers "mphit";
			_this removeAllMPEventHandlers "mprespawn";
			_this removeAllEventHandlers "FiredNear";
			_this removeAllEventHandlers "HandleDamage";
			_this removeAllEventHandlers "Killed";
			_this removeAllEventHandlers "Fired";
			_this removeAllEventHandlers "GetOut";
			_this removeAllEventHandlers "GetIn";
			_this removeAllEventHandlers "Local";,
			deleteVehicle _this;
			deleteGroup (group _this);
			_this = nil;
			
			_cleanup 	 = true;	
		};		
	};

	CleanUpFnc = {
		{
		if (_x getVariable ["VarCleanUp",false]) then {
		sleep 5;
			_x call Fnc_Clean;
				};
		} forEach (_this nearObjects 50);
	};
};
