private ["_crate"];
_crate 	= _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
_crate addWeaponCargoGlobal ["LMG_Mk200_MRCO_F", 5];