#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; y*x = 1920*1080
; y: Right
; x: Bottom

^j:: ;auto mine
ControlGetFocus, ctr, act ; get the focused(active) control(child window) of the active window
ControlGetPos, x, y, width, height, %cr%, A ; get the position and dimensions of this control
v1 = %width%
v2 = %height%
v1 += 0
v2 += 0
Loop {

	Random, x, v1/2-100, v1/2+130
	Random, y, v2/2-80, v2/2+120
	Random, r1, v1/2-150, v1/2-120
	Random, r2, v2/2-90, v2/2-80
	Click, %x%, %y%
	Sleep, 500
	Click, right, %r1%, %r2%
	Sleep, 5000
	Random, x, v1/2-80, v1/2+120
	Random, y, v2/2-90, v2/2+130
	Random, r1, v1/2-120, v1/2-80
	Random, r2, v2/2-120, v2/2-90
	Click, %x%, %y%
	Sleep, 500
	Click, right, %r1%, %r2%
	Sleep, 5000
	}
return

^h:: ;auto alter
Loop {
	Send {F6}
	Sleep, 20000
	}
return

^g:: ;auto fish
ControlGetFocus, ctr, act ; get the focused(active) control(child window) of the active window
ControlGetPos, x, y, width, height, %cr%, A ; get the position and dimensions of this control
v1 = %width%
v2 = %height%
v1 += 0
v2 += 0
;MsgBox %v1% x %v2%.
Loop{
	ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *150 *TransWhite %A_ScriptDir%\fish_high.bmp
	if ErrorLevel != 1
	{
		Send {Down down}  ; Press down the up-arrow key.
		Sleep 2000  ; Keep it down for one second.
		Send {Down up}  ; Release the up-arrow key.
		;Sleep, 1500  ; Keep it down for one second.
	}
	ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 %A_ScriptDir%\fish_low.bmp
	if (ErrorLevel != 1 and ErrorLevel != 2)
	{
		Send {Up down}  ; Press down the up-arrow key.
		Sleep 2100  ; Keep it down for one second.
		Send {Up up}  ; Release the up-arrow key.
		
	}
	
	
}
return



Esc::ExitApp  ; Exit script with Escape key
^!p::Pause    ; Pause script with Ctrl+Alt+P
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
^!r::Reload   ; Reload script with Ctrl+Alt+R

