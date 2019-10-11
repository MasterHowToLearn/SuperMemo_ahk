#IfWinActive ahk_exe AcroRd32.exe # Adobe Acrobat Reader

# Make sure you have ^p in serach field and an empty space in replace field
# at least once before executing this script.

F7:: #F7 to activate it

Send, ^{c}
Sleep, 100
if WinExist("ahk_exe WINWORD.EXE")
    WinActivate
else
    MsgBox, WinActivate timed out.
Sleep, 100
Send, ^{a}
Sleep, 100
Send, ^{v}
Sleep, 100
Send, ^{h}
Sleep, 100
Send, !{a}
Sleep, 100
Send, {Enter}
Sleep, 100
Send, {Esc}
Sleep, 100
Send, ^{a}
Sleep, 100
Send, ^{x}
Sleep, 100
if WinExist("ahk_exe balabolka.exe")
    WinActivate
else
    MsgBox, WinActivate timed out.
Sleep, 100
Click,left,500,500
Sleep, 100
Send, {F7}
Sleep, 100
Send, ^{a}
Sleep, 100
Send, ^{v}
Sleep, 100
Send, {F5}
return
