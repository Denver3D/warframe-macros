#IfWinActive Warframe
{
    ; Slide Attack
    *XButton2::
    Loop
    {
    	If (GetKeyState("XButton2", "P")) {
            SendInput {Control Down}
	        Sleep 125
	        SendInput {f}
	        Sleep 125
	        SendInput {Control Up}
            Sleep 125
        } else {
            Return
        }
    }

    ; Semi-auto to full auto when Caps is pressed
    LButton::
    Loop
    {
        If (GetKeyState("CapsLock", "T") && GetKeyState("LButton", "P")) {
            Click
            Sleep 30
        } else {
            Return
        }
    }

    ; Automatic Volt Discharge / Equinox Maim for ESO
    F12::
        toggle := !toggle
        While toggle {
            Send 4
            Sleep 11000
        }
    Return

    ; Automatic Rhino Roar for ESO
    F11::
        toggle := !toggle
        While toggle {
            Send 3
            Sleep 38000
        }
    Return
}