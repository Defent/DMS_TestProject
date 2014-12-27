createBox = {
	private ["_crate"];
	_crate 	= _this select 0;
	_numWeapons = _this select 1;

	removeAllItems _crate;
	removeAllWeapons _crate;

	for "_i" from 1 to _numWeapon do {
		_crate addWeaponCargoGlobal ["arifle_SDAR_F"];
		for "_i" from 1 to 3 do {
		_crate addMagazineCargoGlobal ["20Rnd_556x45_UW_Mag"];
		};
	};
};