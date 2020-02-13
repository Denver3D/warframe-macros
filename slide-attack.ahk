MAIMING_STRIKE_SLEEP_TIME := 125

#IfWinActive Warframe
{
    ; Slide Attack
    *XButton2::
    Loop
    {
    	If (GetKeyState("XButton2", "P")) {
            SendInput {Control Down}
	        Sleep MAIMING_STRIKE_SLEEP_TIME
	        SendInput {f}
	        Sleep MAIMING_STRIKE_SLEEP_TIME
	        SendInput {Control Up}
            Sleep MAIMING_STRIKE_SLEEP_TIME
        } else {
            Return
        }
    }
}