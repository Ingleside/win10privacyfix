#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("win10privacyfix", 262, 346, 2230, 314)
$Bcheck = GUICtrlCreateButton("check", 16, 8, 73, 17)
$Button2 = GUICtrlCreateButton("fix", 208, 263, 33, 17)
$Button6 = GUICtrlCreateButton("fix", 218, 50, 33, 17)
$Button7 = GUICtrlCreateButton("fix", 220, 116, 33, 17)
$Button8 = GUICtrlCreateButton("fix", 16, 204, 33, 17)
$Label1 = GUICtrlCreateLabel("DiagTrack Service State...", 16, 48, 186, 17)
$Label2 = GUICtrlCreateLabel("dmwappushservice Service State...", 16, 92, 203, 17)
$Label3 = GUICtrlCreateLabel("DiagTrack Service State...", 16, 68, 194, 17)
$Label4 = GUICtrlCreateLabel("dmwappushservice Service State...", 16, 116, 195, 17)
$Label5 = GUICtrlCreateLabel("AdvertisingInfo Status...", 16, 172, 228, 33)
$Label6 = GUICtrlCreateLabel("checking Mircosoft Telemetry....", 24, 264, 179, 17)
$Button1 = GUICtrlCreateButton("my blog", 96, 8, 73, 17)
$Button3 = GUICtrlCreateButton("reddit thread", 176, 8, 75, 17)
$Group1 = GUICtrlCreateGroup("Services", 8, 32, 249, 113)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1)
Dim $StatusBar1_PartsWidth[2] = [70, -1]
_GUICtrlStatusBar_SetParts($StatusBar1, $StatusBar1_PartsWidth)
_GUICtrlStatusBar_SetText($StatusBar1, "Version 0.1", 0)
_GUICtrlStatusBar_SetText($StatusBar1, "", 1)
$Group2 = GUICtrlCreateGroup("AdvertisingInfo", 8, 152, 249, 81)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("Mircosoft Telemetry and Feedback", 8, 240, 249, 81)
$Label7 = GUICtrlCreateLabel("checking Feedback....", 24, 289, 167, 17)
$Button4 = GUICtrlCreateButton("fix", 205, 288, 33, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
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

   $DiagTrack = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack", "Start")
   If $DiagTrack = "1" Then
	  GUICtrlSetData($Label3,"DiagTrack Autostart")
   EndIf
   If $DiagTrack = "4" Then
	  GUICtrlSetData($Label3,"DiagTrack Autostart disabled")
   EndIf

   $dmwappushservice = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice", "Start")
   If $dmwappushservice = "1" Then
	  GUICtrlSetData($Label4,"dmwappushservice Autostart active")
   EndIf
   If $dmwappushservice = "4" Then
	  GUICtrlSetData($Label4,"dmwappushservice Autostart disabled")
   EndIf

   $feedback = RegRead("HKCU\SOFTWARE\Microsoft\Siuf\Rules", "NumberOfSIUFInPeriod")
   If $feedback = "0" Then
   GUICtrlSetData($Label7,"Feedback frequency disabled")
   Else
	  GUICtrlSetData($Label7,"Feedback frequency not disabled")
   EndIf

;#######
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
;#######

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
;#######

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
;#######

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
;#######



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

Case $Button4
   RegWrite("HKCU\SOFTWARE\Microsoft\Siuf\Rules", "NumberOfSIUFInPeriod", "REG_DWORD", "0")

Case $Button1
   ShellExecute("https://wiiare.in/windows-10-privacy-fixer/")

Case $Button3
   ShellExecute("https://www.reddit.com/r/conspiracy/comments/3fhy27/how_do_disable_all_privacy_leaks_in_windows_10/ctq3p3m")

	EndSwitch
WEnd
