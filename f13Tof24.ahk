#Requires AutoHotkey v2.0

#SingleInstance Force

; 1::{
;     ; MsgBox("presseddddded")
;     Send("{F13}")
;     return

; }

2::{
    ; MsgBox("presseddddded")
    Send("{F13}")
    return

}

F3::{
    MsgBox("presseddddded")
    SendLevel(3)
    SendInput("{F13}")
    SendPlay("{F13}")
    return

}




$F4::F16
$F5::F17
$F6::F18
$F7::F19
$F8::F20
$F9::F21
$F10::F22
$F11::F23
$F12::F24



F12::{
    SendLevel 2
    Send "{F13}"
    return
}

return