;MKLINK Autohotkey.ahk C:\Users\Imaginize\Documents\Projects\autohotkey\Autohotkey.ahk

NumpadEnter::LButton
;`::Click 2

AppsKey::^x
RShift::^c
Pause::^v
NumpadSub::^z

;WINDOW SWITCHER
RWin::
if WinActive("ahk_class TaskSwitcherWnd")
{
	Send {Enter}
}
else
{
	Run, "C:\Window Switcher"
}
if WinActive("ahk_class TaskSwitcherWnd")
{
	5::left
	6::right
}

;Del::LButton

~^r::Reload

~^1::
If WinActive("ahk_class PX_WINDOW_CLASS") || WinActive("ahk_class Chrome_WidgetWin_1")
{
	return
}
else If WinActive("ahk_class ThunderRT6FormDC") || WinActive("ahk_class MAME") || WinActive("ahk_class Project64 2.0") || WinActive("ahk_class JnesWindow") || WinActive("ahk_class wxWindowNR")
{	
	WinClose
	return
}
else If WinActive("ahk_class KegaClass")
{
	Send {Esc}
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
RALt::
if WinActive("ahk_class Chrome_WidgetWin_1")
Send ^+{Tab}
else if WinActive("ahk_class PX_WINDOW_CLASS")
Send ^{PgUp}
return

RControl::
if WinActive("ahk_class Chrome_WidgetWin_1")
Send ^{Tab}
else if WinActive("ahk_class PX_WINDOW_CLASS")
Send ^{PgDn}
return

`::
IfWinActive ahk_class Chrome_WidgetWin_1
{
WinGet, chrome_id, ID, A
WinHide
WinActivate ahk_class Chrome_WidgetWin_1
}
else
{
Send {`}
}
return

^`::
IfWinActive ahk_class Chrome_WidgetWin_1
{
WinShow, ahk_id %chrome_id%
WinActivate ahk_class Chrome_WidgetWin_1
}
return