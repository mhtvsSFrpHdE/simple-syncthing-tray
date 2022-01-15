#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Prevent auto exit on idle
#Persistent

; Tray icon
Menu, Tray, Icon, icon.ico, ,

; Remove default tray menu
Menu, Tray, NoStandard



; Add menu

; Open syncthing gui
Menu, Tray, Add, Open Syncthing, OpenSyncthingGui

; Exit
Menu, Tray, Add, Exit, ExitApp



; Stop auto execute section
return



; Script section

; Open syncthing gui
OpenSyncthingGui:
Run, http://127.0.0.1:8384
return

; Exit
ExitApp:
ExitApp
return
