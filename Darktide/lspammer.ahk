#Requires AutoHotkey v2.0
#SingleInstance
A_MaxHotkeysPerInterval := 200

#Include lib.ahk


; https://www.reddit.com/r/Vermintide/comments/8q9804/autohotkey_macro_sharing_my_spam_attack_and_spam/

; Todo only on darktide!
; IfWinActive "Darktide", "ahk_exe", "Darktide.exe"
; HotIfWinActive "ahk_exe Darktide"
; Warhammer 40,000: Darktide
; ahk_class main_window
; ahk_exe Darktide.exe
; ahk_pid 19260
; ahk_id 265564

; Times

; [1Hold, 2Hold] ms
; ToDo Add release?

; Zealot
atroxAxe:=[50,650]
flamethrower:=[50,50]
bolter:=[0,0]

; Psyker Psykinetic
surgeStaff:=[50,50]
purgatusStaff:=[20,01]
psyker2:=[0,0]
noAHK:=[0,0]

; ON/OFF, quick delay, slow delay
IDX:=1
LSleepMap := Map(
1, atroxAxe,
2, noAHK,
3, noAHK,
4, noAHK,
5, noAHK,
)


; When changing Weapon
MODE:=1

setMode(m){
    ; Update current Mode
    Send(m)
    global MODE
    MODE:=m
}
setMode(1)

LSpammer(ThisHotKey){
  ; Critical ; Is Critical necessary?
;   While GetKeyState("LButton","P")
While (GetKeyState("LButton","P") AND !GetKeyState("RButton","P")){
      ; SoundBeep
      Click "Down"
      Sleep LSleepMap.Get(MODE)[IDX]
      ; MsgBox LSleepMap.Get(MODE)[IDX]
      Click "Up"
      Sleep 50
  }

Return
}

setMacro(){
    ; MsgBox LSleepMap.Get(MODE)[IDX]
    if (LSleepMap.Get(MODE)[IDX]){
    ; MsgBox "macro ON!"
    Hotkey "LButton", LSpammer, "On"
    } else {
        ; MsgBox "macro OFF! Removing!"
        Hotkey "LButton", LSpammer, "Off"
    }
}

XButton1::{ ; Swap to other timing
global IDX
IDX:=Map(1,2,2,1).get(IDX)
SoundBeep
setMacro()
Return
}





; "$" prefix avoids recursive infinite loops
$1::{ ; MELEE WEAPON
setMode(1)
setMacro()
return
}
$2::{ ; RANGED WEAPON
setMode(2)
setMacro()
Return
}
$3::{ ; EXTRA
setMode(3)
setMacro()
Return
}
$4::{
setMode(4)
setMacro()
Return
}
$5::{ ; AUSPEX
setMode(5)
setMacro()
Return
}
$z::{ ; AUSPEX
setMode(5)
setMacro()
Return
}

; Fast swap
; q::{
; global MODE
; if (MODE > 2){
;   setMode(1)
; } else {
;   setMode(Map(1,2,2,1).get(MODE))
; }
; setMacro()
; Return
; }

; Dodge slide mapping
Hotkey "Capslock", dodgeSlideHotkey, "On"
; Toggle R venting
; Hotkey "R", toggleKey, "On"
; $R::{
;MsgBox GetKeyState("R", "P")
; pos:=Map(1,"up",0,"down").get(GetKeyState("R", "T"))
; MsgBox thisKey
; MsgBox pos
; Send "{R %pos%}"
; Return
; }

;; WoRks!
; KeyDown:=0
; $R::{
; global KeyDown
; KeyDown := !KeyDown
; If KeyDown {
; 	Send "{R down}"
; } Else {
; 	Send "{R up}"
;     }
; Return
; }
