if(isServer) then {
private ["_completed","_cleanup"];
_completed = false;
_cleanup   = false;

	MissionCompleted = {
	
	private["_missionPos"];
	_missionPos = _this select 0;
	
	waitUntil{{isPlayer _x && _x distance _missionPos < 60  } count playableunits > 0}; 
		
	_completed	 = true;
	};
	
	MissionCleanup = {
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
			_this removeAllEventHandlers "Local";
			deleteVehicle _this;
			deleteGroup (group _this);
			_this = nil;
			
			_cleanup 	 = true;	
		};		
	};
};