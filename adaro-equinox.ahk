#IfWinActive Warframe
{
    ; Equinox Adaro
    ~2::
    If (GetKeyState("CapsLock", "T")) {
        While (GetKeyState("2", "P")) {
            send 2
            Sleep 100
        }
        Return
    }
    Return
}