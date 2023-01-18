; GEFORCE NOW ANTI AFK BY HACKERCODER
; REMOVED: #NoEnv
SetWorkingDir(A_ScriptDir)
CoordMode("Mouse", "Window")
SendMode("Input")
#SingleInstance Force
SetTitleMatchMode(2)
#WinActivateForce
SetControlDelay(1)
SetWinDelay(0)
SetKeyDelay(-1)
SetMouseDelay(-1)
; REMOVED: SetBatchLines -1
MonitorCount := MonitorGetCount()
MonitorGet(1, &MonitorLeft, &MonitorTop, &MonitorRight, &MonitorBottom)
Loop
{
    If WinExist("ahk_exe GeForceNOW.exe")
	{
        var_winactive:=WinActive("ahk_exe GeForceNOW.exe")
        if !var_winactive {
            WinMove(1, 0, MonitorRight, MonitorBottom, "GeForce NOW")
        }
        var_geforce:=WinExist("ahk_exe GeForceNOW.exe")
		ControlSend("F13", , "ahk_id " var_geforce)
        if !var_winactive {
            Sleep(1)
            WinMove(0, 0, MonitorRight, MonitorBottom, "GeForce NOW")
        }
    }
    Sleep(240000)
}
Return