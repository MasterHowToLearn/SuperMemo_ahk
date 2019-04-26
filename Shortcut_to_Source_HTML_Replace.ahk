#IfWinActive ahk_exe sm17.exe

^CapsLock::

Click, left, 1100, 500
Sleep 200
Send {Esc}
Send ^+{F6}
Sleep 500
Send ^{h}
Sleep 300
Send [...]
Sleep 300
Send !{f}
return
