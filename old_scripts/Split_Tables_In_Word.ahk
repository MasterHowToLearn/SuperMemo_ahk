#IfWinActive ahk_exe WINWORD.EXE

!CapsLock::
Send !{j}{l}
Sleep 300
Send {q}
Sleep 200
Send {Enter}
Sleep 100
Send {Enter}
Send {Down}
Sleep 100
Send {Down}
Sleep 100
Send {Down}
return
