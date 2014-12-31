createBox = {
	private ["_crate","_numWeapons"];
	_crate 	= _this select 0;
	_numWeapons = _this select 1;
	
	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	removeAllItems _crate;
	removeAllWeapons _crate;
	
	_crate addWeaponCargoGlobal ["arifle_SDAR_F"];
	_crate addMagazineCargoGlobal ["20Rnd_556x45_UW_Mag"];

};