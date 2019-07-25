﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;E.G. BEGIN
;!(ALT)<Key>::
;	if WinExist("<WinTitle String>")
;		WinActivate  Uses the last found window.
;	else 
;		Run <program>
;	return (so it don't get borked and run all of them)



!C::
	if WinExist("ahk_exe chrome.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run Chrome
	return

!F::
	if WinExist("ahk_class MozillaWindowClass")
		WinActivate  ; Uses the last found window.
	else 
		Run Firefox		
	return
	
!N::
	if WinExist("ahk_class Notepad++")
		WinActivate  ; Uses the last found window.
	else 
		Run Notepad++		
	return
	
!D::
	if WinExist("ahk_exe Discord.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
	return
	
!X::
	if WinExist("ahk_exe xampp-control.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\xampp\xampp-control.exe"
	return
	
!S::
	if WinExist("ahk_exe Slack.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Slack - Shortcut.lnk"
	return
	
!E::
	if WinExist("ahk_class SWT_Window0")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Eclipse\Eclipse Java 2019-06.lnk"
	return
	
!G::
	if WinExist("ahk_exe GitHubDesktop.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\Documents\Macros\GitHub Desktop.lnk"
	return
	
	
!W::
	if WinExist("ahk_class CabinetWClass")
		WinActivate  ; Uses the last found window.
	else 
		Run explorer
	return	
	
!P::
	if WinExist("ahk_exe Postman.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Postman\Postman.lnk"
	return	
!Z:: 
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\Users\benny\my-app `r`n ng build my-app `r`n exit `r`n
	return	

+!Z:: 
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\Users\benny\my-app `r`n ng build my-app `r`n
	return		

!R::
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\xampp\htdocs `r`n npx babel-cli react --ignore node_modules --out-dir compiled --copy-files --presets react `r`n exit `r`n
	return	
	
+!R::
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\xampp\htdocs `r`n npx babel-cli react --ignore node_modules --out-dir compiled --copy-files --presets react `r`n
	return	

!T::
	if WinExist("ahk_exe cmd.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run cmd.exe
	return	

!O::
	if WinExist("ahk_exe WINWORD.EXE") || WinExist("ahk_exe EXCEL.EXE") || WinExist("ahk_exe POWERPNT.EXE")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
	return	

!V::
	if WinExist("ahk_exe devenv.exe")
		WinActivate  ; Uses the last found window.
	else{ 
		Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019.lnk"
		;Run "C:\Users\benny\Documents\Macros\VS 2019 Warning.bat"
	}
	return	


;Web shortcuts, pretty simple, there is corresponding batch file for each

!L::
	Run "C:\Users\benny\Documents\Macros\localhost.bat"
	return

!Y::
	Run "C:\Users\benny\Documents\Macros\youtube.bat"
	return