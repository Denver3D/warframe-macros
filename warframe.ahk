#IfWinActive WARFRAME
{
    ; Slide Attack
    *XButton2::
        SendInput {Control Down}
        Sleep 125
        SendInput {f}
        Sleep 125
        SendInput {Control Up}
    return
}