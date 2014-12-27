DMS - File rev 0.48 - Date: 2014 - 12 - 27
===

Defents mission system

Stuff is not always working as it should. This works but you will need to have some knowledge on how to
execute files serverside in Arma 3.

Contains two MAAIN twst missions. No array for side missions at the moment. Will be added later. 

Missions should spawn AI. To keep ai staying, unquote the last part. Should keep them active and up for 4 hours.


WHAT DOES THIS NOT HAVE AND WHATS IN DEVELOPMENT:

- Proper cleanup
- Mission finish trigger
- Other stuff
- AI spawn ammount
- Ai spawning only when player is x distance to mission.


If you believe that the files I use and scripts I have resemble yours, please do tell me at 
admin@numenadayz.com and I will correct it. Or PM me on the epoch forums.

We do not want to steal code now do we ;)


HOW TO INSTALL
===

Make custom pbo
Call my file DMS_INIT.sqf

Eeh.. put files in root folder.


What to modify?
===

Change mission timer in selectMission.sqf

_minTime = 1*1; //1 sec
_maxTime = 2*2; //4 sec
