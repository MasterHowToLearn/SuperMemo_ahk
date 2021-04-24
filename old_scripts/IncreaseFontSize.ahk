#IfWinActive, ahk_exe Code.exe ; Visual Studio Code

^CapsLock::  ; Control + CapsLock to trigger
    Sleep, 200
    Send, ^a
    Sleep, 100
    Send, ^x
    Sleep, 150
    WinActivate ahk_exe WINWORD.EXE
    Sleep, 150
    Send, ^a
    Sleep, 100
    Send, ^v
    Sleep, 100
    Send, ^a
    Sleep, 100
    Send, ^+.
    Sleep, 100
    Send, ^+.
    Sleep, 100
    Send, ^+.
    Sleep, 100
    Send, ^x
    return

