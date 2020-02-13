#IfWinActive Warframe
{
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