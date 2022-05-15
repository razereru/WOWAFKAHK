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

WinGet, wowid, ID, World of Warcraft

$^+F9::
if (enable := !enable)
  setTimer, MoveAround, -1
return

MoveAround:
while enable
{
  ifWinExist, ahk_id %wowid%
  {
;START IN CHAR 1
    Sleep, 250
 ; MOVEMENT1
    ControlSend,, {a down}, ahk_id %wowid%
    Random, a1, 80, 100
    Sleep a1
    ControlSend,, {a up}, ahk_id %wowid%
    
    Random, r1, 800, 16000
    Sleep, r1

    ControlSend,, {d down}, ahk_id %wowid%
    Random, d1, 80, 100
    Sleep d1
    ControlSend,, {d up}, ahk_id %wowid%
;WAIT 4-5 Minutes   5 mins total
    Random, rw2, 240000, 300000
    Sleep, rw2
; MOVEMENT2  
    ControlSend,, {d down}, ahk_id %wowid%
    Random, d2, 80, 100
    Sleep d2
    ControlSend,, {d up}, ahk_id %wowid%
    
    Random, r2, 800, 1600
    Sleep, r2

    ControlSend,, {a down}, ahk_id %wowid%
    Random, a2, 80, 100
    Sleep a2
    ControlSend,, {a up}, ahk_id %wowid%

    Random, r4, 800, 1600
    Sleep, r4
; EXTRA JUMP MOVEMENT1
    ControlSend,, {Space}, ahk_id %wowid%
    Random, rw3, 800, 1600
    Sleep, rw3

    ControlSend,, {Space}, ahk_id %wowid%

;WAIT 4-5 Minutes 10 mins total
    Random, rw4, 240000, 300000
    Sleep, rw4

; MOVEMENT3
    ControlSend,, {a down}, ahk_id %wowid%
    Random, a3, 80, 100
    Sleep a3
    ControlSend,, {a up}, ahk_id %wowid%
    
    Random, rw1, 900, 1600
    Sleep, rw1

    ControlSend,, {d down}, ahk_id %wowid%
    Random, d3, 80, 100
    Sleep d3
    ControlSend,, {d up}, ahk_id %wowid%

    ControlSend,, {Space}, ahk_id %wowid%
    Random, rw5, 800, 16000
    Sleep, rw5
;WAIT 3-5 Minutes 15 mins total
    Random, rw5, 180000, 300000
    Sleep, rw5
; MOVEMENT4  
    ControlSend,, {d down}, ahk_id %wowid%
    Random, d4, 80, 100
    Sleep d4
    ControlSend,, {d up}, ahk_id %wowid%
    
    Random, r3, 900, 16000
    Sleep, r3

    ControlSend,, {a down}, ahk_id %wowid%
    Random, a3, 80, 100
    Sleep a3
    ControlSend,, {a up}, ahk_id %wowid%

    Random, r4, 800, 16000
    Sleep, r4
;WAIT 30secs 15.5 mins total
    Random, rw6, 18000, 30000
    Sleep, rw6

;------ LOGOUTMACRO -------
;PRESS LOGOUT MACRO
    ControlSend,, {e down}, ahk_id %wowid%
    Sleep 80
    ControlSend,, {e up}, ahk_id %wowid%
 ; WAITING AT CHAR SELECTION 10-16 MINS
    Random, rl1, 620000, 960000
    Sleep, rl1
; SWITCH CHAR to CHAR2
    ControlSend,, {up down}, ahk_id %wowid%
    Sleep, 80
    ControlSend,, {up up}, ahk_id %wowid%
; WAITING ON CHAR 2
    Sleep, 6000
; lOGING IN TO CHAR 2
    ControlSend,, {enter down}, ahk_id %wowid%
    Sleep, 80
    ControlSend,, {enter up}, ahk_id %wowid%
;IN CHAR 2 wait 2-
    Random, al2, 120000, 180000
    Sleep, al2
; MOVEMENT1-2
    ControlSend,, {a down}, ahk_id %wowid%
    Random, ab1, 80, 100
    Sleep ab1
    ControlSend,, {a up}, ahk_id %wowid%
    
    Random, rb1, 800, 16000
    Sleep, rb1

    ControlSend,, {d down}, ahk_id %wowid%
    Random, db1, 80, 100
    Sleep db1
    ControlSend,, {d up}, ahk_id %wowid%
;WAIT 4-5 Minutes 5 mins total
    Random, rwb2, 240000, 300000
    Sleep, rwb2
; MOVEMENT2-2
    ControlSend,, {d down}, ahk_id %wowid%
    Random, db2, 80, 100
    Sleep db2
    ControlSend,, {d up}, ahk_id %wowid%
    
    Random, rb2, 800, 16000
    Sleep, rb2

    ControlSend,, {a down}, ahk_id %wowid%
    Random, ab2, 80, 100
    Sleep ab2
    ControlSend,, {a up}, ahk_id %wowid%

    Random, rb4, 800, 16000
    Sleep, rb4
; EXTRA JUMP MOVEMENT1-2
    ControlSend,, {Space}, ahk_id %wowid%
    Random, rwb3, 800, 16000
    Sleep, rwb3

    ControlSend,, {Space}, ahk_id %wowid%

    ;WAIT 4-5 Minutes 10 mins total
    Random, rwb5, 240000, 300000
    Sleep, rwb5

    ; MOVEMENT3-2
    ControlSend,, {a down}, ahk_id %wowid%
    Random, ab3, 80, 100
    Sleep ab3
    ControlSend,, {a up}, ahk_id %wowid%
    
    Random, rwb1, 800, 16000
    Sleep, rwb1

    ControlSend,, {d down}, ahk_id %wowid%
    Random, db3, 80, 100
    Sleep db3
    ControlSend,, {d up}, ahk_id %wowid%

    ControlSend,, {Space}, ahk_id %wowid%
    Random, rwb6, 800, 16000
    Sleep, rwb6

;WAIT 3-5 Minutes 15 mins total
    Random, rwb7, 180000, 300000
    Sleep, rwb7
; MOVEMENT4-2  
    ControlSend,, {d down}, ahk_id %wowid%
    Random, db4, 80, 100
    Sleep db4
    ControlSend,, {d up}, ahk_id %wowid%
    
    Random, rb7, 800, 16000
    Sleep, rb7

    ControlSend,, {a down}, ahk_id %wowid%
    Random, ab3, 80, 100
    Sleep ab3
    ControlSend,, {a up}, ahk_id %wowid%

    Random, rb8, 800, 16000
    Sleep, rb8
;WAIT 3-5 Minutes 20 mins total
    Random, rwb8, 180000, 300000
    Sleep, rwb8
;------ LOGOUTMACRO -------
;PRESS LOGOUT MACRO 
    ControlSend,, {e down}, ahk_id %wowid%
    Sleep 80
    ControlSend,, {e up}, ahk_id %wowid%
; WAITING FOR LOADING
    Sleep, 80000
; SWITCH CHAR CHAR1
    ControlSend,, {down down}, ahk_id %wowid%
    Sleep, 80
    ControlSend,, {down up}, ahk_id %wowid%
; WAITING CHAR 1 SELECTION 10-13 MINS
    Random, rl2, 600000, 800000
    Sleep, rl2
; lOGING IN TO CHAR 1
    ControlSend,, {enter down}, ahk_id %wowid%
    Sleep, 80
    ControlSend,, {enter up}, ahk_id %wowid%
; WAITING 2-4mins
    Random, r, 120000, 240000
    Sleep r
  }
}
return