#Requires AutoHotkey v2.0
#SingleInstance
A_MaxHotkeysPerInterval := 200

; Use LeftAlt to toggle script On/Off
#SuspendExempt
LAlt::{
SoundBeep
Suspend
}
#SuspendExempt False

; Times

;ms
atroxAxe:=[50,650]
flamethrower:=[50,650]

; ON/OFF, quick delay, slow delay
IDX:=1
LSleepMap := Map(
1, atroxAxe,
2, flamethrower,
3, [0,0],
4, [0,0],
5, [0,0],
)





; When changing weapon
MODE:=1
setMode(m){
    global MODE
    MODE:=m
    Send(m)
}



; "$" prefix avoids recursive infinite loops
$1::{ ; MELEE WEAPON
setMode(1)
}
$2::{ ; RANGED WEAPON
setMode(2)
Return
}
$3::{ ; EXTRA
setMode(3)
Return
}
$4::{
setMode(4)
Return
}
$5::{ ; AUSPEX
setMode(5)
Return
}
$z::{ ; AUSPEX
setMode(5)
Return
}

; Fast swap
q::{
global MODE
if (MODE > 2){
  MODE:=1
} else {
  MODE:=Map(1,2,2,1).get(IDX)
}
Send(MODE)
Return
}





LButton::{

  sArr:= LSleepMap.Get(MODE)
  if (sArr[1] <= 0){
    return
  }

  ; Critical ; Is Critical necessary?
  While GetKeyState("LButton","P")
  {
      SoundBeep
      Click "Down"
      Sleep sArr[IDX]
      ; MsgBox sArr[IDX]
      Click "Up"
      Sleep 50
  }

Return
}





XButton1::{ ; Swap to other timing
global IDX
IDX:=Map(1,2,2,1).get(IDX)
Return
}

