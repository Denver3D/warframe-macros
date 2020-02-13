REDEEMER_FORWARD_COMBO = 1

#IfWinActive Warframe
{

    ; High Noon Redeemer Spam
    ; Work in progress
    *XButton2::
        If (REDEEMER_FORWARD_COMBO >= 1) {
            Send {w Down}
            SendInput {f}
            Send {w Up}
            REDEEMER_FORWARD_COMBO = 0
        } Else {
            Send {s Down}
            SendInput {f}
            Send {s Up}
            REDEEMER_FORWARD_COMBO = 1
        }
    Return
}