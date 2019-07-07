#IfWinActive ahk_exe sm18.exe
CoordMode, Mouse, Screen

a::
MouseGetPos, OutputVarX, OutputVarY
Click, right, %OutputVarX%, %OutputVarY%
Click, left

Loop, 10
{
    Send {Down}
}
Sleep, 100
Send {Enter}
Sleep, 100
Send {Down}
Sleep, 100
Send {Enter}
Sleep, 100
Send {Esc}
return
