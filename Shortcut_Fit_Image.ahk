#IfWinActive ahk_exe sm18.exe
CoordMode, Mouse, Screen

a::
MouseGetPos, OutputVarX, OutputVarY
Click, right, %OutputVarX%, %OutputVarY%
Send {Down}
Sleep, 100
Send {Right}
Sleep, 100
Loop, 9
{
    Send {Down}
}
Sleep, 100
Send {Enter}
Sleep, 100
Send {Down}
Sleep, 100
Send {Enter}
return
