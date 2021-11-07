#NoEnv
#InstallKeybdHook
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
SysGet, MonitorCount, MonitorCount
SysGet, Monitor, Monitor, 1

kk:
IfWinExist on GeForce NOW
{
IfWinActive, on GeForce NOW
	{

		If A_TimeIdlePhysical > 630000
		{
			WinMove, on GeForce NOW,, 1, 0, %MonitorRight%, %MonitorBottom%
    			Sleep, 333
    			WinMove, on GeForce NOW,, 0, 0, %MonitorRight%, %MonitorBottom%
			Sleep, 640000
			goto, kk
		}
		else
		Sleep 640000
		goto, kk

	}
	else
	WinGetTitle, okno, A
	WinActivate, on GeForce NOW
	WinMove, on GeForce NOW,, 1, 0, %MonitorRight%, %MonitorBottom%
    	Sleep, 333
    	WinMove, on GeForce NOW,, 0, 0, %MonitorRight%, %MonitorBottom%
	Sleep, 333
	WinActivate, %okno%
	Sleep, 640000
	goto, kk
}
else
Sleep, 640000
goto, kk

	