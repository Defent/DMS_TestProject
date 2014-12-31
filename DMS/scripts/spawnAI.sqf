spawnAI = {
	private ["_group", "_pos","_soldier","_skill","_units"];
	_pos  = _this select 0;
	_units = _this select 1;
	_skill = _this select 2;
	_group = createGroup RESISTANCE;
	_group setBehaviour "COMBAT";
	_group setCombatMode "RED";
	_group allowFleeing 0;
	for "_i" from 1 to _units do {
		_soldier = _group createUnit ["I_Soldier_EPOCH", [_pos select 0, _pos select 1, 0], [], 1, "Form"];
		removeAllAssignedItems _soldier;
		removeUniform _soldier;
		removeHeadgear _soldier;
		removeAllItems _soldier;
		removeAllWeapons _soldier;
		_soldier forceaddUniform "U_I_officerUniform";
		_soldier addVest "V_5_Epoch"; 
		_soldier addGoggles "G_Diving";
		for "_i" from 1 to 3 do {
		_soldier addItemToVest  "30Rnd_762x39_Mag";
		};
		_soldier addWeapon "AKM_Epoch";
		_soldier setRank "Private";
		{
		_soldier enableAI _x;
		}forEach ["TARGET","AUTOTARGET","MOVE","ANIM"];
		_soldier disableAI "FSM";
		_soldier allowDammage true;
		switch (_skill) do
		{
			case 1: //conscript very low skill
			{
				_soldier setSkill ["aimingspeed", 0.05];
				_soldier setSkill ["spotdistance", 0.05];
				_soldier setSkill ["aimingaccuracy", 0.02];
				_soldier setSkill ["aimingshake", 0.02];
				_soldier setSkill ["spottime", 0.1];
				_soldier setSkill ["spotdistance", 0.3];
				_soldier setSkill ["commanding", 0.3];
				_soldier setSkill ["general", 0.2];
			};
			case 2: //rebels low skill
			{
				_soldier setSkill ["spotdistance", 0.1];
				_soldier setSkill ["aimingaccuracy", 0.05];
				_soldier setSkill ["aimingshake", 0.05];
				_soldier setSkill ["spottime", 0.2];
				_soldier setSkill ["spotdistance", 0.4];
				_soldier setSkill ["commanding", 0.4];
				_soldier setSkill ["general", 0.3];
			};
			case 3: //regular fair skill
			{
				_soldier setSkill ["aimingspeed", 0.15];
				_soldier setSkill ["spotdistance", 0.15];
				_soldier setSkill ["aimingaccuracy", 0.1];
				_soldier setSkill ["aimingshake", 0.1];
				_soldier setSkill ["spottime", 0.3];
				_soldier setSkill ["spotdistance", 0.5];
				_soldier setSkill ["commanding", 0.5];
				_soldier setSkill ["general", 0.6];
				};
			case 4: //elite soldiers medium skill
			{
				_soldier setSkill ["aimingspeed", 0.3];
				_soldier setSkill ["spotdistance", 0.3];
				_soldier setSkill ["aimingaccuracy", 0.3];
				_soldier setSkill ["aimingshake", 0.3];
				_soldier setSkill ["spottime", 0.4];
				_soldier setSkill ["spotdistance", 0.6];
				_soldier setSkill ["commanding", 0.6];
				_soldier setSkill ["general", 0.7];
			};		
			case 5: // Grim skill
			{

				_soldier setSkill ["aimingspeed", 0.9];
				_soldier setSkill ["spotdistance", 0.9];
				_soldier setSkill ["aimingaccuracy", 0.9];
				_soldier setSkill ["aimingshake", 0.9];
				_soldier setSkill ["spottime", 0.9];
				_soldier setSkill ["spotdistance", 0.9];
				_soldier setSkill ["commanding", 0.8];
			};
			case 6: // Defent > Grim
			{
				_soldier setSkill ["aimingspeed", 1];
				_soldier setSkill ["spotdistance", 1];
				_soldier setSkill ["aimingaccuracy", 1];
				_soldier setSkill ["aimingshake", 1];
				_soldier setSkill ["spottime", 1];
				_soldier setSkill ["spotdistance", 1];
				_soldier setSkill ["commanding", 1];
			};
		};
	};
};