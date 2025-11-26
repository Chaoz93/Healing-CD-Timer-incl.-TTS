; wow_timer_hotkeys.ahk
; Forward in-game F9/F10/F11 to Chrome as F13/F14/F15 so WoW never gets any input.
; Only Chrome is remote-controlled; WoW remains untouched (ban-safe, no automation).

#NoEnv
#SingleInstance Force
SetTitleMatchMode 2
SetBatchLines -1
SetKeyDelay -1, -1

; Hotkeys are active only while World of Warcraft is focused.
#IfWinActive ahk_exe Wow.exe

; WoW receives nothing; the ControlSend targets chrome.exe exclusively.
F9::  ControlSend,, {F13}, ahk_exe chrome.exe
F10:: ControlSend,, {F14}, ahk_exe chrome.exe
F11:: ControlSend,, {F15}, ahk_exe chrome.exe

#IfWinActive
