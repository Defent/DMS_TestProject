private ["_sleepTime","_run","_countArray","_randomMiss","_missVar","_minTime","_maxTime","_missionFnc","_MainArray"];
// First we add the array of missions
_MainArray = ["MM1","MM2"];
//DMS_SideArray = ["SM1","SM2"];

_minTime = 1*1; //1 sec
_maxTime = 2*2; //4 sec


_sleepTime = (random (_maxTime - _minTime)) + _minTime;
sleep _sleepTime;

_countArray = count _MainArray;
_slct = floor (random _countArray);
_missVar = _MainArray select _slct;

//[] execVM format ["mission\missions\%1.sqf",_missVar];
	//diag_log text format ["DMS: Main Mission [%1] is starting.",_varName];

if (_missVar == "MM1") then {
	[] execVM "mission\missions\MM1.sqf"
};
if (_missVar == "MM2") then {
	[] execVM "mission\missions\MM2.sqf"
};
