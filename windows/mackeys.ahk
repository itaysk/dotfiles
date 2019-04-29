SendMode Input

;doesn't work <#::Return

#s::Send ^s
#a::Send ^a
#c::Send ^c
#+c::Send ^+c
#v::Send ^v
#x::Send ^x
#o::Send ^o
#f::Send ^f
#z::Send ^z
#+z::Send ^y
#y::Send ^y
#t::Send ^t
#w::Send ^w

CapsLock::Send {Esc}
!Space::Send {Alt Down}{Shift}{Alt up}


<#Tab::AltTab
;can't map three chord hotkey to alttab built in command? <#<+Tab::ShiftAltTab

#Left::Send {Home}
#Right::Send {End}
#Up::Send ^{Home}
#Down::Send ^{End}
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send ^+{Home}
#+Down::Send ^+{End}
#Backspace::Send +{Home}{Backspace}


; spectacle
!#Left::Send #{Left}
!#Right::Send #{Right}
!#Up::Send #{Up}
!#Down::Send #{Down}


;doesnt work... #IfWinActive ("ahk_exe chrome.exe")
#r::Send {F5}
#+t::Send ^+t