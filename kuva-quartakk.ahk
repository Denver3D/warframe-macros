#IfWinActive Warframe
{
    ; Kuva Quartakk
    ~LButton::
    If (GetKeyState("CapsLock", "T")) {
        While (GetKeyState("LButton", "P")) {
            Click Down Right
            Click
            Click Up Right
            Sleep 25
        }
        Return
    }
    Return
}