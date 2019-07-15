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
            Click
            Return
        }
    }

    ; Semi-auto to full auto when Caps is pressed
    ; Semi-autos are capped at a fire rate of 10, so we click 40 times a second
    ; to ensure that we hit the maximum fire rate.
    ~LButton::
    If (GetKeyState("CapsLock", "T")) {
    	While (GetKeyState("LButton", "P")) {
    		Click
            Sleep 25
    	}
    	Return
    }
    Return
}