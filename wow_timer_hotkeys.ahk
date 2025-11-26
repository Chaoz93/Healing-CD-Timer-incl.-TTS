; wow_timer_hotkeys.ahk
; Sends F9/F10/F11 directly to Chrome while World of Warcraft is active.
; Uses ControlSend to target chrome.exe so the game never receives the keys,
; avoiding any in-game actions and keeping the setup ban-safe.

#NoEnv
#SingleInstance Force
SetTitleMatchMode 2
SetBatchLines -1
SetKeyDelay -1, -1

; Only run these hotkeys while the WoW client is the foreground window.
#IfWinActive ahk_exe Wow.exe
F9::ControlSend,, {F9}, ahk_exe chrome.exe
F10::ControlSend,, {F10}, ahk_exe chrome.exe
F11::ControlSend,, {F11}, ahk_exe chrome.exe
#IfWinActive
