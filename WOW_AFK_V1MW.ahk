; !!!!MULTI WINDOW!!!!
; Eru WOW AFK AHK Script for World of Warcraft
;
; 
; Autohotkey required https://www.autohotkey.com/
;
; ---How to use this script---
; Have 2 characters to log into  -they need to be above one another in the log in screen (and select the character lower of the 2)
; In game Logout macro "/logout" needed for each character and Bound to key "E"
;
; Make sure WoW is running
; Start this script by right clicking on it and selecting "Run Script"
;
; Press Shift+Ctrl+F9 to activate the script
; You can minimize WoW if you wish
; Commands will be sent to WoW window only, not to other windows/processes
;
; This macro should AFK in game for 15 mins log out idle for 15 mins and log in to another character 
; Press Shift+Ctrl+F9 to deactivate the script
;
; Loosly based on Ade's Anti AFK AHK script for WoW

#NoEnv                        ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input                ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%   ; Ensures a consistent starting directory.

WinGet, wowid, List, World of Warcraft

$^+F9::
if (enable := !enable)
  setTimer, MoveAround, -1
return

MoveAround:
while enable
{
  ifWinExist, ahk_exe WowClassic.exe
  {
;START IN CHAR 1
    Sleep, 250
; MOVEMENT1
    ControlSend,, {a down}, ahk_id %wowid1% ;press A ID1
    ControlSend,, {a down}, ahk_id %wowid2% ;press A ID2
    ControlSend,, {a down}, ahk_id %wowid3% ;press A ID3
    ControlSend,, {a down}, ahk_id %wowid4% ;press A ID4
    Random, a1, 80, 100
    Sleep a1
    ControlSend,, {a up}, ahk_id %wowid1% ;release A ID1
    ControlSend,, {a up}, ahk_id %wowid2% ;release A ID2
    ControlSend,, {a up}, ahk_id %wowid3% ;release A ID3
    ControlSend,, {a up}, ahk_id %wowid4% ;release A ID4
;SLEEP     
    Random, r1, 800, 16000
    Sleep, r1
; MOVEMENT2
    ControlSend,, {d down}, ahk_id %wowid1% ;press D ID1
    ControlSend,, {d down}, ahk_id %wowid2% ;press D ID2
    ControlSend,, {d down}, ahk_id %wowid3% ;press D ID3
    ControlSend,, {d down}, ahk_id %wowid4% ;press D ID4
    Random, d1, 80, 100
    Sleep d1
    ControlSend,, {d up}, ahk_id %wowid1% ;release D ID1
    ControlSend,, {d up}, ahk_id %wowid2% ;release D ID2
    ControlSend,, {d up}, ahk_id %wowid3% ;release D ID3
    ControlSend,, {d up}, ahk_id %wowid4% ;release D ID4
;WAIT 4-5 Minutes   5 mins total
    Random, rw2, 240000, 300000
    Sleep, rw2
; MOVEMENT3
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, d2, 80, 100
    Sleep d2
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
;SLEEP
    Random, r2, 800, 1600
    Sleep, r2
; MOVEMENT4  
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, a2, 80, 100
    Sleep a2
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP  
    Random, r4, 800, 1600
    Sleep, r4
; EXTRA JUMP MOVEMENT4
    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%
    Random, rw3, 800, 1600
    Sleep, rw3
    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%

;WAIT 4-5 Minutes 10 mins total
    Random, rw4, 240000, 300000
    Sleep, rw4

; MOVEMENT4
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, a3, 80, 100
    Sleep a3
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP      
    Random, rw1, 900, 1600
    Sleep, rw1
; MOVEMENT5 
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, d3, 80, 100
    Sleep d3
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
; MOVEMENT6
    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%
    Random, rw5, 800, 16000
    Sleep, rw5
;WAIT 3-5 Minutes 15 mins total
    Random, rw5, 180000, 300000
    Sleep, rw5
; MOVEMENT7  
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, d4, 80, 100
    Sleep d4
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
; SLEEP    
    Random, r3, 900, 16000
    Sleep, r3
; MOVEMENT
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, a3, 80, 100
    Sleep a3
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP
    Random, r4, 800, 16000
    Sleep, r4
;WAIT 30secs 15.5 mins total
    Random, rw6, 18000, 30000
    Sleep, rw6

;------ LOGOUTMACRO -------
;PRESS LOGOUT MACRO - ID1
    ControlSend,, {e down}, ahk_id %wowid1%
    ControlSend,, {e down}, ahk_id %wowid2%
    ControlSend,, {e down}, ahk_id %wowid3%
    ControlSend,, {e down}, ahk_id %wowid4%
    Sleep 80
    ControlSend,, {e up}, ahk_id %wowid1%
    ControlSend,, {e up}, ahk_id %wowid2%
    ControlSend,, {e up}, ahk_id %wowid3%
    ControlSend,, {e up}, ahk_id %wowid4%
; WAITING AT CHAR SELECTION 10-16 MINS
    Random, rl1, 620000, 960000
    Sleep, rl1
; SWITCH CHAR to CHAR2 - ID1
    ControlSend,, {up down}, ahk_id %wowid1%
    ControlSend,, {up down}, ahk_id %wowid2%
    ControlSend,, {up down}, ahk_id %wowid3%
    ControlSend,, {up down}, ahk_id %wowid4%
    Sleep, 80
    ControlSend,, {up up}, ahk_id %wowid1%
    ControlSend,, {up up}, ahk_id %wowid2%
    ControlSend,, {up up}, ahk_id %wowid3%
    ControlSend,, {up up}, ahk_id %wowid4%
; WAITING ON CHAR 2 - ID1
    Sleep, 6000
; lOGING IN TO CHAR 2 - ID1
    ControlSend,, {enter down}, ahk_id %wowid1%
    ControlSend,, {enter down}, ahk_id %wowid2%
    ControlSend,, {enter down}, ahk_id %wowid3%
    ControlSend,, {enter down}, ahk_id %wowid4%
    Sleep, 80
    ControlSend,, {enter up}, ahk_id %wowid1%
    ControlSend,, {enter up}, ahk_id %wowid2%
    ControlSend,, {enter up}, ahk_id %wowid3%
    ControlSend,, {enter up}, ahk_id %wowid4%
;IN CHAR 2 wait 2
    Random, al2, 120000, 180000
    Sleep, al2
; MOVEMENT1-2
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, ab1, 80, 100
    Sleep ab1
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP    
    Random, rb1, 800, 16000
    Sleep, rb1
; MOVEMENT-2-char2
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, db1, 80, 100
    Sleep db1
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
;WAIT 4-5 Minutes 5 mins total
    Random, rwb2, 240000, 300000
    Sleep, rwb2
; MOVEMENT3-char2
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, db2, 80, 100
    Sleep db2
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
;SLEEP    
    Random, rb2, 800, 16000
    Sleep, rb2
; MOVEMENT4-char2
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, ab2, 80, 100
    Sleep ab2
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%

    Random, rb4, 800, 16000
    Sleep, rb4
; EXTRA JUMP MOVEMENT5-char2
    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%
    Random, rwb3, 800, 16000
    Sleep, rwb3

    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%

;WAIT 4-5 Minutes 10 mins total
    Random, rwb5, 240000, 300000
    Sleep, rwb5

; MOVEMENT6-char2
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, ab3, 80, 100
    Sleep ab3
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP    
    Random, rwb1, 800, 16000
    Sleep, rwb1
; MOVEMENT7-2
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, db3, 80, 100
    Sleep db3
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
; MOVEMENT8-2
    ControlSend,, {Space}, ahk_id %wowid1%
    ControlSend,, {Space}, ahk_id %wowid2%
    ControlSend,, {Space}, ahk_id %wowid3%
    ControlSend,, {Space}, ahk_id %wowid4%
    Random, rwb6, 800, 16000
    Sleep, rwb6

;WAIT 3-5 Minutes 15 mins total
    Random, rwb7, 180000, 300000
    Sleep, rwb7
; MOVEMENT9-2
    ControlSend,, {d down}, ahk_id %wowid1%
    ControlSend,, {d down}, ahk_id %wowid2%
    ControlSend,, {d down}, ahk_id %wowid3%
    ControlSend,, {d down}, ahk_id %wowid4%
    Random, db4, 80, 100
    Sleep db4
    ControlSend,, {d up}, ahk_id %wowid1%
    ControlSend,, {d up}, ahk_id %wowid2%
    ControlSend,, {d up}, ahk_id %wowid3%
    ControlSend,, {d up}, ahk_id %wowid4%
;SLEEP    
    Random, rb7, 800, 16000
    Sleep, rb7
; MOVEMENT10-2 
    ControlSend,, {a down}, ahk_id %wowid1%
    ControlSend,, {a down}, ahk_id %wowid2%
    ControlSend,, {a down}, ahk_id %wowid3%
    ControlSend,, {a down}, ahk_id %wowid4%
    Random, ab3, 80, 100
    Sleep ab3
    ControlSend,, {a up}, ahk_id %wowid1%
    ControlSend,, {a up}, ahk_id %wowid2%
    ControlSend,, {a up}, ahk_id %wowid3%
    ControlSend,, {a up}, ahk_id %wowid4%
;SLEEP
    Random, rb8, 800, 16000
    Sleep, rb8
;WAIT 3-5 Minutes 20 mins total
    Random, rwb8, 180000, 300000
    Sleep, rwb8
;------ LOGOUTMACRO -------
;PRESS LOGOUT MACRO 
    ControlSend,, {e down}, ahk_id %wowid1%
    ControlSend,, {e down}, ahk_id %wowid2%
    ControlSend,, {e down}, ahk_id %wowid3%
    ControlSend,, {e down}, ahk_id %wowid4%
    Sleep 80
    ControlSend,, {e up}, ahk_id %wowid1%
    ControlSend,, {e up}, ahk_id %wowid2%
    ControlSend,, {e up}, ahk_id %wowid3%
    ControlSend,, {e up}, ahk_id %wowid4%
; WAITING FOR LOADING
    Sleep, 80000
; SWITCH CHAR CHAR1
    ControlSend,, {down down}, ahk_id %wowid1%
    ControlSend,, {down down}, ahk_id %wowid2%
    ControlSend,, {down down}, ahk_id %wowid3%
    ControlSend,, {down down}, ahk_id %wowid4%
    Sleep, 80
    ControlSend,, {down up}, ahk_id %wowid1%
    ControlSend,, {down up}, ahk_id %wowid2%
    ControlSend,, {down up}, ahk_id %wowid3%
    ControlSend,, {down up}, ahk_id %wowid4%
; WAITING CHAR 1 SELECTION 10-13 MINS
    Random, rl2, 600000, 800000
    Sleep, rl2
; lOGING IN TO CHAR 1
    ControlSend,, {enter down}, ahk_id %wowid1%
    ControlSend,, {enter down}, ahk_id %wowid2%
    ControlSend,, {enter down}, ahk_id %wowid3%
    ControlSend,, {enter down}, ahk_id %wowid4%
    Sleep, 80
    ControlSend,, {enter up}, ahk_id %wowid1%
    ControlSend,, {enter up}, ahk_id %wowid2%
    ControlSend,, {enter up}, ahk_id %wowid3%
    ControlSend,, {enter up}, ahk_id %wowid4%
; WAITING 2-4mins
    Random, r, 120000, 240000
    Sleep r
  }
}
return