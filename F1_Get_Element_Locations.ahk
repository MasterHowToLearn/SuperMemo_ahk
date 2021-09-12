; F1_Get_Element_Locations
; by MasterHowToLearn - updated Sep 12, 2021
; https://www.masterhowtolearn.com/

; This script will traverse the Top Element in Knowledge Tree (KT) and store each Element location in Clipboard
; How to use:
; Open Knowledge Tree (KT), with the starting Element in focus, press F1 (or change the trigger to your liking)
; Then it should go down each Element
; The result is stored in the Clipboard

#SingleInstance force
#NoEnv
SendMode Input
#IfWinActive ahk_exe sm18.exe ; change this accordingly if you're not using ver 18
SetControlDelay, 50
SetKeyDelay, 20, 20

InputBox, loopCount, Enter Loop Count, , , 200, 100,

F1:: ; F1 is the trigger
; detect if KT is in focus
IfWinNotActive, ahk_class TContents
{
    MsgBox, Please open Knowledge Tree and run the script again
    ExitApp
}
finalString := ""
loop, %loopCount%
{
ControlSend, , {ctrl down}c{ctrl up}, ahk_exe sm18.exe , , ,
Sleep, 100
ClipWait
metaData := Clipboard

; get HTMFile source
htmlRegEx := "HTMFile=.*?\.HTM"
RegExMatch(metaData, htmlRegEx, htmlLocation, StartingPosition := 1)
onlyHtmlLocation := SubStr(htmlLocation, 9 , StrLen(htmlLocation))
one := "r'" onlyHtmlLocation "',"
finalString := finalString . "`r`n" . one
Send, {Down}
Sleep, 300
}

Clipboard := finalString
ClipWait
return

4::ExitApp  ; Exit script