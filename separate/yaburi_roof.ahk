#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; y*x = 1920*1080
; y: Right
; x: Bottom

^j::
ControlGetFocus, ctr, act ; get the focused(active) control(child window) of the active window
ControlGetPos, x, y, width, height, %cr%, A ; get the position and dimensions of this control
v1 = %width%
v2 = %height%
v1 += 0
v2 += 0
;MsgBox %v1% x %v2%.
Loop{
	ImageSearch, nextX, nextY, 0,0,%v1%,%v2%, *50 D:\AutoHotkey\Yaburi\roof1.PNG
	if ErrorLevel != 1
	{
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *150 *TransWhite D:\AutoHotkey\Yaburi\strawberry.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\nut.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\dew.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick dew %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		Click, %nextX%, %nextY%
		Sleep, 1500  ; Keep it down for one second.
	}
	
	ImageSearch, nextX, nextY, 0,0,%v1%,%v2%, *50 D:\AutoHotkey\Yaburi\roof2.PNG
	if ErrorLevel != 1
	{
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *150 *TransWhite D:\AutoHotkey\Yaburi\strawberry.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\nut.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\dew.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick dew %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		Click, %nextX%, %nextY%
		Sleep, 1500  ; Keep it down for one second.
	}
	ImageSearch, nextX, nextY, 0,0,%v1%,%v2%, *50 D:\AutoHotkey\Yaburi\roof31.PNG
	if ErrorLevel != 1
	{	
		Click, %nextX%, %nextY%
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *150 *TransWhite D:\AutoHotkey\Yaburi\strawberry.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\nut.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1500  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\dew.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick dew %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, nextX, nextY, 0,0,%v1%,%v2%, *50 D:\AutoHotkey\Yaburi\roof32.PNG
		Click, %nextX%, %nextY%
		Sleep, 1500  ; Keep it down for one second.
	}
	ImageSearch, nextX, nextY, 0,0,%v1%,%v2%, *20 D:\AutoHotkey\Yaburi\roof4.PNG
	if ErrorLevel != 1
	{
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *150 *TransWhite D:\AutoHotkey\Yaburi\strawberry.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\nut.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick straw %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		ImageSearch, FoundX, FoundY, 0,0,%v1%,%v2%, *100 *TransWhite D:\AutoHotkey\Yaburi\dew.bmp
		if ErrorLevel != 1
		{
			;MsgBox Pick dew %FoundX%, %FoundY%.		
			Click, %FoundX%, %FoundY%
			Sleep, 1000  ; Keep it down for one second.
		}
		Click, %nextX%, %nextY%
		Sleep, 1500  ; Keep it down for one second.
	}
}
return

  Esc::ExitApp  ; Exit script with Escape key
^!p::Pause    ; Pause script with Ctrl+Alt+P
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
^!r::Reload   ; Reload script with Ctrl+Alt+R
