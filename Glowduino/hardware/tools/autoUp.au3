;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         Jonathan Bennett (jon@hiddensoft.com)
;
; Script Function:
;   Opens Notepad, types in some text and then quits.
;   The text typed shows two ways of Sending special
;   characters
;


; Prompt the user to run the script - use a Yes/No prompt (4 - see help file)
Local $answer = MsgBox(4, "Ready for Upload", "Have you closed the boot jumper and hit reset on the Glowdeck? (No will abort)")
MsgBox(0, "Ready for Upload", "Once you hit OK the automated process will open the uploader and select the file to upload - DO NOT TOUCH the keyboard or mouse until a message box says you can!")

; Check the user's answer to the prompt (see the help file for MsgBox return values)
; If "No" was clicked (7) then exit the script
If $answer = 7 Then
	Exit
EndIf
	  
; Wait 10 seconds for the Notepad window to appear.
Local $hWnd = WinWait("[REGEXPTITLE:(.*DYMO Label)]", "", 1)


; Kill the window using the handle returned by WinWait.
WinKill($hWnd, "")

; Run Notepad
Run("DLS.exe")


; Wait for the Notepad become active - it is titled "Untitled - Notepad" on English systems
WinWaitActive("DFU Demo")


; Now that the Notepad window is active type some special characters
Send("{TAB 1}{ENTER}")
MsgBox(0, "Do stupid thing because your laptop hates you", "Unplug and replug in the same port and then hit OK")

Sleep(5000)
Send("{TAB 9}{ENTER}")
Sleep(3000)
Send($CmdLine[1])
Send("{ENTER}")
Sleep(3000)
Send("{TAB 2}{ENTER}")

MsgBox(0, "Uploading Now", "Your file is now uploading - you can do other things while it does, it will pop up and upload complete box when done. It is slow, you can watch the progress the the bottom of the DFU Demo window. The DFU Demo window will remain open - you can close it manually and it will automatically reopen on your next upload.")
; Finished!
