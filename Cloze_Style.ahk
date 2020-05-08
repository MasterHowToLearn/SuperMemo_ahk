#IfWinActive ahk_exe sm18.exe ; applicable only for SuperMemo 18

^Tab:: ; Trigger Control + Tab
Send, <span class="Cloze">[...]</span>
Sleep, 100
Send +{Left 32}
Sleep, 100
Send ^+{1}
return