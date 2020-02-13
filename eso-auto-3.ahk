ROAR_DURATION := 38000

#IfWinActive Warframe
{
	; Automatic Rhino Roar for ESO
    F11::
        toggle := !toggle
        While toggle {
            Send 3
            Sleep ROAR_DURATION
        }
    Return
}