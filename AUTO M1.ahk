SetBatchLines, -1
EnterScript:
SetMouseDelay, -1
Suspend
msgbox,0,AUTO M1,k to enable/disable
k:: ;Change this Key to change bind
    Suspend, Permit
    HandlePause()
*~$LButton::
While GetkeyState("LButton", "P"){
Click
Sleep 3
}
Return
RemoveToolTip(){
	ToolTip
	return
}
HandlePause(){
	if (A_IsSuspended == 1){ ;if suspended
		Suspend
		ToolTip,MACRO ON
		sleep,1000
		RemoveToolTip()
	}
	else{ ;if not suspended
		Suspend
		ToolTip,MACRO OFF
		sleep,1000
		RemoveToolTip()
	}
}