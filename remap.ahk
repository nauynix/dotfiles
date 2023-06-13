; Razer mouse
F23::Send #{Left}
F24::Send #{Right}
F23 & F24:: WinMaximize, A

;Dvorak pause when Scroll lock is on

Loop {
   If GetKeyState("ScrollLock", "T") {
      Suspend On
   } else {
      Suspend Off
   }
   Sleep, 50
}

;	=Dvorak Hot Key Fixes ( Autohotkey )

CapsLock::Send {BackSpace}
RShift::Send {Esc}
;--------------------------------------
;----------------- CTRL ALT KEY

^![::Send ^!-
^!]::Send ^!=
^!'::Send ^!q
^!,::Send ^!w
^!.::Send ^!e
^!p::Send ^!r
^!y::Send ^!t
^!f::Send ^!y
^!g::Send ^!u
^!c::Send ^!i
^!r::Send ^!o
^!l::Send ^!p
^!/::Send ^![
^!=::Send ^!]
^!o::Send ^!s
^!e::Send ^!d
^!u::Send ^!f
^!i::Send ^!g
^!d::Send ^!h
^!h::Send ^!j
^!t::Send ^!k
^!n::Send ^!l
^!s::Send ^!`;
^!-::Send ^!'
^!`;::Send ^!z
^!q::Send ^!x
^!j::Send ^!c
^!k::Send ^!v
^!x::Send ^!b
^!b::Send ^!n
^!m::Send ^!m
^!w::Send ^!,
^!v::Send ^!.
^!z::Send ^!/


;----------------- CTRL SHIFT KEY

^+[::Send ^+-
^+]::Send ^+=
^+'::Send ^+q
^+,::Send ^+w
^+.::Send ^+e
^+p::Send ^+r
^+y::Send ^+t
^+f::Send ^+y
^+g::Send ^+u
^+c::Send ^+i
^+r::Send ^+o
^+l::Send ^+p
^+/::Send ^+[
^+=::Send ^+]
^+o::Send ^+s
^+e::Send ^+d
^+u::Send ^+f
^+i::Send ^+g
^+d::Send ^+h
^+h::Send ^+j
^+t::Send ^+k
^+n::Send ^+l
^+s::Send ^+`;
^+-::Send ^+'
^+`;::Send ^+z
^+q::Send ^+x
^+j::Send ^+c
^+k::Send ^+v
^+x::Send ^+b
^+b::Send ^+n
^+m::Send ^+m
^+w::Send ^+,
^+v::Send ^+.
^+z::Send ^+/

;----------------- CTRL KEY

*^[::Send ^-
*^]::Send ^=

*^'::Send ^q
*^,::Send ^w
*^.::Send ^e
*^p::Send ^r
*^y::Send ^t
*^f::Send ^y
*^g::Send ^u
*^c::Send ^i
*^r::Send ^o
*^l::Send ^p
*^/::Send ^[
*^=::Send ^]

*^o::Send ^s
*^e::Send ^d
*^u::Send ^f
*^i::Send ^g
*^d::Send ^h
*^h::Send ^j
*^t::Send ^k
*^n::Send ^l
*^s::Send ^`;
*^-::Send ^'

*^`;::Send ^z
*^q::Send ^x
*^j::Send ^c
*^k::Send ^v
*^x::Send ^b
*^b::Send ^n
*^m::Send ^m
*^w::Send ^,
*^v::Send ^.
*^z::Send ^/

;----------------- ALT SHIFT KEY

!+[::Send !+-
!+]::Send !+=
!+'::Send !+q
!+,::Send !+w
!+.::Send !+e
!+p::Send !+r
!+y::Send !+t
!+f::Send !+y
!+g::Send !+u
!+c::Send !+i
!+r::Send !+o
!+l::Send !+p
!+/::Send !+[
!+=::Send !+]
!+o::Send !+s
!+e::Send !+d
!+u::Send !+f
!+i::Send !+g
!+d::Send !+h
!+h::Send !+j
!+t::Send !+k
!+n::Send !+l
!+s::Send !+`;
!+-::Send !+'
!+`;::Send +!z
!+q::Send !+x
!+j::Send !+c
!+k::Send !+v
!+x::Send !+b
!+b::Send !+n
!+m::Send !+m
!+w::Send !+,
!+v::Send !+.
!+z::Send !+/

;----------------- ALT KEY

*![::Send !-
*!]::Send !=

*!'::Send !q
*!,::Send !w
*!.::Send !e
*!p::Send !r
*!y::Send !t
*!f::Send !y
*!g::Send !u
*!c::Send !i
*!r::Send !o
*!l::Send !p
*!/::Send ![
*!=::Send !]

*!o::Send !s
*!e::Send !d
*!u::Send !f
*!i::Send !g
*!d::Send !h
*!h::Send !j
*!t::Send !k
*!n::Send !l
*!s::Send !`;
*!-::Send !'

*!`;::Send !z
*!q::Send !x
*!j::Send !c
*!k::Send !v
*!x::Send !b
*!b::Send !n
*!m::Send !m
*!w::Send !,
*!v::Send !.
*!z::Send !/

;----------------- WINDOWS KEY

*#[::Send #-
*#]::Send #=

*#'::Send #q
*#,::Send #w
*#.::Send #e
*#p::Send #r
*#y::Send #t
*#f::Send #y
*#g::Send #u
*#c::Send #i
*#r::Send #o
*#l::Send #p
*#/::Send #[
*#=::Send #]

*#o::Send #s
*#e::Send #d
*#u::Send #f
*#i::Send #g
*#d::Send #h
*#h::Send #j
*#t::Send #k
*#n::Send #l
*#s::Send #`;
*#-::Send #'

*#`;::Send #z
*#q::Send #x
*#j::Send #c
*#k::Send #v
*#x::Send #b
*#b::Send #n
*#m::Send #m
*#w::Send #,
*#v::Send #.
*#z::Send #/

^#j::Send ^#c

;END Dvorak Hot Key Fixes
