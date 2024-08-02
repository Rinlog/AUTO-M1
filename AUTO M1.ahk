msgbox("k to enable/disable","¯\_(ツ)_/¯")
Suspend
$LButton::
{
	While GetKeyState("LButton", "P")
	{
		Click
		sleep(30)
	}
	Return
}
#SuspendExempt
k::HandlePause ;change the letter before the double colon to change keybind
RemoveToolTip(){
	ToolTip
	return
}
#SuspendExempt False
HandlePause(){
	if (A_IsSuspended == 1){ ;if suspended
		Suspend
		ToolTip("MACRO ON")
		sleep(1000)
		RemoveToolTip()
	}
	else{ ;if not suspended
		Suspend
		ToolTip("MACRO OFF")
		sleep(1000)
		RemoveToolTip()
	}
}
