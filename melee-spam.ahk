#IfWinActive Warframe
{
    ; Melee Spam
    *XButton2::
        While (GetKeyState("XButton2", "P")) {
            SendInput {f}
            Sleep 50
        }
    Return
}