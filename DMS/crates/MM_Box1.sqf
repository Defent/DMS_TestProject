private ["_crate"];
_crate 	= _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addWeaponCargoGlobal ["Rollins_F", 5];