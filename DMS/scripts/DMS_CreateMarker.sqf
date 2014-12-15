// This looks a lot like the EMS and DZMS way of doing markers and that is true.
// It's not a blatant copy even though it looks like it. If you feel that is them please tell me and I will change it 

private["_nul","_nil"];
DMS_Cords = _this select 0;
DMS_MainName = _this select 1;

_nul = createMarker ["DMS_MainMarker", DMS_Cords];
"DMS_MainMarker" setMarkerColor "ColorRed";
"DMS_MainMarker" setMarkerShape "ELLIPSE";
"DMS_MainMarker" setMarkerBrush "Grid";
"DMS_MainMarker" setMarkerSize [150,150];

_nil = createMarker ["DMS_MainDot", DMS_Cords];
"DMS_MainDot" setMarkerColor "ColorBlack";
"DMS_MainDot" setMarkerType "mil_dot";
"DMS_MainDot" setMarkerText DMS_MainName;
