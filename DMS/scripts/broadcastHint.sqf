if(!isServer) then {
private ["_hint"];
	_hint = _this select 0;
	GlobalHint = _hint;
	publicVariable "GlobalHint";

	"GlobalHint" addPublicVariableEventHandler {
	hint parseText format ["%1",_hint]; 
	};
};
	