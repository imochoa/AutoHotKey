#Requires AutoHotkey v2.0
#SingleInstance
A_MaxHotkeysPerInterval := 200

; This is a comment
; https://steamcommunity.com/sharedfiles/filedetails/?id=1348900780
; https://www.youtube.com/watch?v=Au5BFtpb65o&list=PLfHPAKSz_DJqmJJIW1P3DM9hMlaP24ivp

; IfWinActive Darktide ahk_exe vermintide2.exe 

; Warhammer 40,000: Darktide
; ahk_class main_window
; ahk_exe Darktide.exe
; ahk_pid 19260
; ahk_id 265564


; Use Ctrl+Alt+S to toggle script On/Off
#SuspendExempt
^!s::Suspend  ; Ctrl+Alt+S
#SuspendExempt False


; We need a small delay for the left click to register
LMB(t:=10)
{
Click "Down"
Sleep t
Click "Up"
}


; Test message when pressing f1
f1::{
msgbox "test yo"
return
}


;L20
f2::{
delay1:=Random(300, 375)
delay2:=Random(300, 375)
Click "Down"
Sleep delay2
Click "Up"
return
}

; XButton1 "4th button" (back one)
; XButton2 "5th button" (front one) (already using it)



; For looping with a mouse button holding it's different
; https://stackoverflow.com/questions/54916833/holding-lbutton-using-xbutton1-side-button-in-autohotkey
MButton::P

XButton1::{
  While GetKeyState("XButton1","P")
  {
    msgbox "IN"
    Sleep 10
  }
msgbox "OUT"
Return
}


; For looping with a key holding
; p::{
; 
;     Loop
;     {
;         Sleep 10
;         if !GetKeyState("p", "P")  ; The key has been released, so break out of the loop.
;             break
;         ; ... insert here any other actions you want repeated.
;         
;         msgbox "waiting"
;     }
;     msgbox "done"
;     Return
; }

; XButton2::{
; msgbox "x2"
; Return
; }



; WheelUp::{
; LMB
; return
; }
; WheelDown::{
; LMB 1000
; return
; }

; Holding
; XButton1::
;   While GetKeyState("XButton1","P")
;   {
;     MouseClick, left
;     Sleep, 10
;   }
; Return