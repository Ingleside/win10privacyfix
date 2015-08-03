#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 531, 261, 498, 177)
$Bcheck = GUICtrlCreateButton("check", 16, 8, 105, 17)
$Button2 = GUICtrlCreateButton("fix", 400, 175, 121, 17)
$Button6 = GUICtrlCreateButton("fix", 410, 50, 113, 17)
$Button7 = GUICtrlCreateButton("fix", 412, 68, 113, 17)
$Button8 = GUICtrlCreateButton("fix", 408, 116, 113, 17)
$Label1 = GUICtrlCreateLabel("Label1", 16, 40, 164, 25)
$Label2 = GUICtrlCreateLabel("Label1", 16, 68, 164, 17)
$Label3 = GUICtrlCreateLabel("Label1", 184, 36, 196, 25)
$Label4 = GUICtrlCreateLabel("Label1", 184, 60, 196, 25)
$Label5 = GUICtrlCreateLabel("Label1", 16, 100, 348, 41)
$Label6 = GUICtrlCreateLabel("Label6", 16, 160, 348, 33)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1)
Dim $StatusBar1_PartsWidth[2] = [70, -1]
_GUICtrlStatusBar_SetParts($StatusBar1, $StatusBar1_PartsWidth)
_GUICtrlStatusBar_SetText($StatusBar1, "Version 0.1", 0)
_GUICtrlStatusBar_SetText($StatusBar1, "", 1)
$Button1 = GUICtrlCreateButton("my Blog", 8, 208, 73, 25)
$Button3 = GUICtrlCreateButton("reddit thread", 88, 208, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###




While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		 Case $Bcheck
#Region ### Buttoncheck Registry
   $AdvertisingInfo = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Enabled")
   $AdvertisingInfo2 = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Id")
   If $AdvertisingInfo = "1" Then
	  GUICtrlSetData($Label5,"AdvertisingInfo active, your AdvertID is: " & $AdvertisingInfo2)
   EndIf
   If $AdvertisingInfo = "0" Then
	  GUICtrlSetData($Label5,"AdvertisingInfo disabled")
   EndIf


#Region ### Buttoncheck Registry
   $DiagTrack = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack", "Start")
   If $DiagTrack = "1" Then
	  GUICtrlSetData($Label3,"DiagTrack Autostart")
   EndIf
   If $DiagTrack = "4" Then
	  GUICtrlSetData($Label3,"DiagTrack Autostart disabled")
   EndIf

#Region ### Buttoncheck Registry
   $dmwappushservice = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice", "Start")
   If $dmwappushservice = "1" Then
	  GUICtrlSetData($Label4,"dmwappushservice Autostart active")
   EndIf
   If $dmwappushservice = "4" Then
	  GUICtrlSetData($Label4,"dmwappushservice Autostart disabled")
   EndIf


;CAse 2
$pid = Run('sc query DiagTrack', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, 'running') Then
   GUICtrlSetData($Label1, "DiagTrack running")
Else
      GUICtrlSetData($Label1, "DiagTrack not running")
 EndIf
;Case 2

;CAse 2
$pid = Run('sc query dmwappushservice', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, 'running') Then
   GUICtrlSetData($Label2, "dmwappushservice running")
Else
      GUICtrlSetData($Label2, "dmwappushservice not running")
 EndIf
;Case 2

;CAse 2
$pid = Run('sc query dmwappushservice', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, 'running') Then
   GUICtrlSetData($Label2, "dmwappushservice running")
Else
      GUICtrlSetData($Label2, "dmwappushservice not running")
 EndIf
;Case 2

;CAse 2
$pid = Run('ping telemetry.urs.microsoft.com', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, '127.0.0.1') Then
   GUICtrlSetData($Label6, "Mircosoft Telemetry Hosts blocked")
Else
      GUICtrlSetData($Label6, "Mircosoft Telemetry Hosts not blocked")
 EndIf
;Case 2


	 Case $Button6
		Run(@ComSpec & ' /c net stop DiagTrack', '', @SW_HIDE)
		Run(@ComSpec & ' /c sc config DiagTrack start=disabled', '', @SW_HIDE)
	 Case $Button7
		Run(@ComSpec & ' /c net stop DiagTrack', '', @SW_HIDE)
		Run(@ComSpec & ' /c sc config DiagTrack start=disabled', '', @SW_HIDE)
	 Case $Button8
		 RegWrite("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Enabled", "REG_DWORD", "0")
		 RegDelete("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Id")
	 Case $Button2
$file = FileOpen(@windowsdir & "\system32\drivers\etc\hosts", 1)
FileWrite($file, @CRLF)
FileWrite($file, "### Block MS Telemetry Hosts")
FileWrite($file, @CRLF)
FileWrite($file, "127.0.0.1 vortex.data.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 vortex-win.data.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telecommand.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telecommand.telemetry.microsoft.com.nsatc.net" & @CRLF)
FileWrite($file, "127.0.0.1 oca.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 oca.telemetry.microsoft.com.nsatc.net" & @CRLF)
FileWrite($file, "127.0.0.1 sqm.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 sqm.telemetry.microsoft.com.nsatc.net" & @CRLF)
FileWrite($file, "127.0.0.1 watson.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 watson.telemetry.microsoft.com.nsatc.net" & @CRLF)
FileWrite($file, "127.0.0.1 redir.metaservices.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 choice.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 choice.microsoft.com.nsatc.net" & @CRLF)
FileWrite($file, "127.0.0.1 df.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 reports.wes.df.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 services.wes.df.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 sqm.df.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 watson.ppe.telemetry.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telemetry.appex.bing.net" & @CRLF)
FileWrite($file, "127.0.0.1 telemetry.urs.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telemetry.appex.bing.net:443" & @CRLF)
FileWrite($file, "127.0.0.1 settings-sandbox.data.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 vortex-sandbox.data.microsoft.com" & @CRLF)
FileWrite($file, "127.0.0.1 telemetry.*" & @CRLF)
FileClose($file)

Case $Button1
   ShellExecute("https://wiiare.in/windows-10-privacy-fixer/")
Case $Button3
   ShellExecute("https://www.reddit.com/r/conspiracy/comments/3fhy27/how_do_disable_all_privacy_leaks_in_windows_10/ctq3p3m")



	EndSwitch
WEnd
