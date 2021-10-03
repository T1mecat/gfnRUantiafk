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
IfWinExist в GeForce NOW
{
IfWinActive, в GeForce NOW
	{

		If A_TimeIdlePhysical > 630000
		{
			WinMove, в GeForce NOW,, 1, 0, %MonitorRight%, %MonitorBottom%
    			Sleep, 333
    			WinMove, в GeForce NOW,, 0, 0, %MonitorRight%, %MonitorBottom%
			Sleep, 640000
			goto, kk
		}
		else
		Sleep 640000
		goto, kk

	}
	else
	WinGetTitle, okno, A
	WinActivate, в GeForce NOW
	WinMove, в GeForce NOW,, 1, 0, %MonitorRight%, %MonitorBottom%
    	Sleep, 333
    	WinMove, в GeForce NOW,, 0, 0, %MonitorRight%, %MonitorBottom%
	Sleep, 333
	WinActivate, %okno%
	Sleep, 640000
	goto, kk
}
else
Sleep, 640000
goto, kk

	