^j::
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

;FileInstall, %A_ScriptDir%\fish_high.bmp, %A_ScriptDir%\fish\high.bmp,1
;FileInstall, %A_ScriptDir%\fish_low.bmp, %A_ScriptDir%\fish\low.bmp,1


Esc::ExitApp  ; Exit script with Escape key
^!p::Pause    ; Pause script with Ctrl+Alt+P
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
^!r::Reload   ; Reload script with Ctrl+Alt+R
