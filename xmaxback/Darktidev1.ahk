#Requires AutoHotkey v2.0
#SingleInstance
A_MaxHotkeysPerInterval := 200

; Use Ctrl+Alt+S to toggle script On/Off
#SuspendExempt
^!s::Suspend  ; Ctrl+Alt+S
#SuspendExempt False

; Atrox Axe
quickAttackSleep:= 80
; 700 ok
heavyAttackSleep:= 650
lSleep := quickAttackSleep

LButton::{
  ; Critical
  While GetKeyState("LButton","P")
  {
      ; SoundBeep
      Click "Down"
      ; msgbox lSleep
      Sleep lSleep
      Click "Up"
      Sleep 50
  }
Return
}



XButton1::{
global

; msgbox "x1"
if (lSleep == quickAttackSleep)
    lSleep:=heavyAttackSleep
else
{
    lSleep:=quickAttackSleep
}
; msgbox lSleep
Return
}




; WheelUp::{
; Click "Down"
; Sleep 600
; Click "Up"
; return
; }

; WheelDown::{
; Click "Down"
; Sleep 600
; Click "Up"
; return
; }
