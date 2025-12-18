#Requires AutoHotkey v2.0
on := 0

#z::{
If (on = 0){
    on := 1
    MsgBox("F13+ Script on")
    sleep 1000
} 
else 
{
    on := 0
    MsgBox "F13+ Script off"
    sleep 1000
}}

F1::{
    If (on = 1)
{
    tooltip "using key as F13"
    Sleep 1000
    Send "{F13}"
    sleep 100
}
}
; F2::
; if on = 1
; {
;     tooltip, using key as F14.
;     Sleep, 1000
;     Send {F14}
;     sleep 100
;     tooltip,
;     Return
; }

; F3::
; if on = 1
; {
;     tooltip, using key as F15.
;     Sleep, 1000
;     Send {F15}
;     sleep 100
;     tooltip,
;     Return
; }

; F4::
; if on = 1
; {
;     tooltip, using key as F16.
;     Sleep, 1000
;     Send {F16}
;     sleep 100
;     tooltip,
;     Return
; }

; F5::
; if on = 1
; {
;     tooltip, using key as F17.
;     Sleep, 1000
;     Send {F17}
;     sleep 100
;     tooltip,
;     Return
; }

; F6::
; if on = 1
; {
;     tooltip, using key as F18.
;     Sleep, 1000
;     Send {F18}
;     sleep 100
;     tooltip,
;     Return
; }

; F7::
; if on = 1
; {
;     tooltip, using key as F19.
;     Sleep, 1000
;     Send {F19}
;     sleep 100
;     tooltip,
;     Return
; }

; F8::
; if on = 1
; {
;     tooltip, using key as F20.
;     Sleep, 1000
;     Send {F20}
;     sleep 100
;     tooltip,
;     Return
; }

; F9::
; if on = 1
; {
;     tooltip, using key as F21.
;     Sleep, 1000
;     Send {F21}
;     sleep 100
;     tooltip,
;     Return
; }

; F10::
; if on = 1
; {
;     tooltip, using key as F22.
;     Sleep, 1000
;     Send {F22}
;     sleep 100
;     tooltip,
;     Return
; }

; F11::
; if on = 1
; {
;     tooltip, using key as F23.
;     Sleep, 1000
;     Send {F23}
;     sleep 100
;     tooltip,
;     Return
; }

; F12::
; if on = 1
; {
;     tooltip, using key as F24.
;     Sleep, 1000
;     Send {F24}
;     sleep 100
;     tooltip,
;     Return
; }