; Media Key
^[::Send {Media_Prev}
^\::Send {Media_Play_Pause}
^]::Send {Media_Next}

; prevent CapsLock
CapsLock::
    KeyWait, CapsLock
    SetCapsLockState, Off
Return
+CapsLock::
    KeyWait, CapsLock
    SetCapsLockState, Off
Return
!CapsLock::
    KeyWait, CapsLock
    SetCapsLockState, Off
Return
^CapsLock::
    KeyWait, CapsLock
    SetCapsLockState, Off
Return

; Caps Hotkey
#If, GetKeyState("CapsLock", "P")
; Arrow Key
w::Up
a::Left
s::Down
d::Right
; Navigate Key
q::Home
e::End
z::PgUp
c::PgDn
; Fn Key
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
-::F11
=::F12
; Numpad Key
Space::0
m::1
,::2
.::3
j::4
k::5
l::6
u::7
i::8
o::9
; poker-like mapping
Esc::
    If GetKeyState("Shift", "P")
    Send, {~}
    Else
    Send, {``}
return
v::Insert
BS::Del