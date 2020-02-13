#IfWinActive Warframe
{
    ; Scope Stacking
    *XButton2::
    While (GetKeyState("XButton2", "P")) {
        Send {RButton down}
        Sleep 70
        Send 5
        Sleep 100
        Send {RButton up}
        Sleep 150
        Send 5
        Sleep 60
    }
    Return
}