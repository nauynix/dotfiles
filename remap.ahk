#NoEnv
;Only remap when Dvorak is on
Loop {
SetFormat, Integer, H
if (DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))==-0xFFDFBF7){
	Suspend Off
}else{
	Suspend On
}
Sleep, 50
SetFormat, Integer, D
}

;Dvorak Hot Key Fixes ( Autohotkey )

CapsLock::Send {BackSpace}
RShift::Send {Esc}

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
