SIMARIS_COOLDOWN := 11000

#IfWinActive Warframe
{
	; Automatic Volt Discharge / Equinox Maim for ESO
    F12::
        toggle := !toggle
        While toggle {
            Send 4
            Sleep SIMARIS_COOLDOWN
        }
    Return
}