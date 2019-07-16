#IfWinActive ahk_exe sm18.exe ; applicable only for SuperMemo 18

^Tab:: ; The trigger shortcut is Control Tab
Send, <span class="Cloze">[...]</span>
Sleep, 100
Loop, 32
{
    Send +{Left}
}
Sleep, 100
Send ^+{1}
return
