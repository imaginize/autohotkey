;MKLINK Autohotkey.ahk C:\Users\Imaginize\Documents\Projects\autohotkey\Autohotkey.ahk

NumpadEnter::LButton
`::Click 2

AppsKey::^x
RShift::^c
Pause::^v
NumpadSub::^z

RWin::
if WinActive("ahk_class TaskSwitcherWnd")
{
	Send {Enter}
}
else
{
	Run, "C:\Users\Imaginize\Documents\switch"
}

;Del::LButton

~^r::Reload

~^1::
If WinActive("ahk_class ThunderRT6FormDC") || WinActive("ahk_class MAME") || WinActive("ahk_class KegaClass") || WinActive("ahk_class Project64 2.0") || WinActive("ahk_class JnesWindow") || WinActive("ahk_class wxWindowNR")
{	
	WinClose
	return
}
else If WinActive("ahk_class PX_WINDOW_CLASS") || WinActive("ahk_class Chrome_WidgetWin_1")
{
	return
}
else IfWinNotExist
{
	Run C:\Hyperspin\HyperSpin.exe
	return
}

;#IfWinActive Angry Birds
;	1::Click 186, 10
;	1::R
;	D::Click 0, 550G::Click 1700, 550
;	3::MouseMove, 475, 630
;return

;sublime text save and switch to chrome
f1::
if WinActive("ahk_class PX_WINDOW_CLASS")
{
    if WinExist("ahk_class Chrome_WidgetWin_1")
	{
		Send ^s
		WinActivate
		Send ^1
		Sleep, 500
		Send {F5}
		return
	}
    return
}
else if WinActive("ahk_class Chrome_WidgetWin_1")
{
	WinActivate, ahk_class PX_WINDOW_CLASS
	return
}

;chrome & sublime
f2::
if WinActive("ahk_class Chrome_WidgetWin_1")
Send ^+{Tab}
else if WinActive("ahk_class PX_WINDOW_CLASS")
Send ^{PgUp}
return

f3::
if WinActive("ahk_class Chrome_WidgetWin_1")
Send ^{Tab}
else if WinActive("ahk_class PX_WINDOW_CLASS")
Send ^{PgDn}
return