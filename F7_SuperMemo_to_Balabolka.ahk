# After highlighting your text, press F7 to activate

F7::

Send, ^{c}
if WinExist("ahk_exe balabolka.exe")
    WinActivate
else
    ExitApp
Sleep, 100
Click,left,500,500
Sleep, 100
Send, {F7} ; I've configured F7 to stop speech
Sleep, 100
Send, ^{a}
Sleep, 100
Send, ^{v}
Sleep, 100
Send, {F5} ; I've configured F5 to start speech
return
