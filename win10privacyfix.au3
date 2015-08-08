#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=c:\users\yourname_here\documents\github\win10privacyfix\win10privacyfix.kxf
$win10privacyfix = GUICreate("win10privacyfix - v0.3", 534, 458, 185, 131)
$Gservices = GUICtrlCreateGroup("Services", 16, 56, 225, 113)
$Cservice1 = GUICtrlCreateCheckbox("DiagTrack Service State...", 24, 72, 153, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cservice2 = GUICtrlCreateCheckbox("DiagTrack Service State...", 24, 89, 153, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cservice4 = GUICtrlCreateCheckbox("dmwappushservice Service State...", 24, 124, 209, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cservice3 = GUICtrlCreateCheckbox("dmwappushservice Service State...", 24, 106, 209, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bfixservice = GUICtrlCreateButton("fix", 208, 144, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Bcheck = GUICtrlCreateButton("check", 16, 8, 81, 41)
$Bblog = GUICtrlCreateButton("my blog", 112, 8, 81, 17)
$Breddit = GUICtrlCreateButton("reddit thread", 112, 32, 81, 17)
$Group2 = GUICtrlCreateGroup("Mircosoft Telemetry and Feedback", 16, 176, 225, 121)
$Bfixfeedback = GUICtrlCreateButton("fix", 208, 216, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cfeedback = GUICtrlCreateCheckbox("Checking Feedback frequency", 24, 196, 177, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Ctelem = GUICtrlCreateCheckbox("Checking Mircosoft Telemetry Hosts...", 24, 244, 209, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bfixtele = GUICtrlCreateButton("fix", 206, 266, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("other stuff ... todo", 248, 336, 281, 113)
$Coldwindir = GUICtrlCreateCheckbox("no windows.old dir ", 256, 360, 193, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bfixwindir = GUICtrlCreateButton("fix", 496, 360, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox8 = GUICtrlCreateCheckbox("Windows Update Serivce is active", 256, 376, 193, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button3 = GUICtrlCreateButton("start", 456, 376, 33, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button4 = GUICtrlCreateButton("stop", 488, 376, 33, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox9 = GUICtrlCreateCheckbox("Windows Update P2P Service active", 256, 392, 201, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button5 = GUICtrlCreateButton("fix", 496, 392, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox11 = GUICtrlCreateCheckbox("Windows Defender Cloud Protection", 256, 408, 233, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button6 = GUICtrlCreateButton("fix", 496, 408, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox12 = GUICtrlCreateCheckbox("Windows Defender Sample submission", 256, 424, 233, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button7 = GUICtrlCreateButton("fix", 496, 424, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Windows 10 Apps ... todo", 248, 144, 281, 185)
$Checkbox1 = GUICtrlCreateCheckbox("... to Location", 256, 168, 129, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox2 = GUICtrlCreateCheckbox("... to Camera ", 256, 184, 121, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox3 = GUICtrlCreateCheckbox("... to Microphone", 256, 200, 145, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox4 = GUICtrlCreateCheckbox("... to Name, picture and more", 256, 216, 153, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox5 = GUICtrlCreateCheckbox("... to Calendar", 256, 232, 145, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox6 = GUICtrlCreateCheckbox("... to SMS and MMS", 256, 248, 129, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox7 = GUICtrlCreateCheckbox("... to bluetooth and wlan", 256, 264, 137, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button1 = GUICtrlCreateButton("remove access", 416, 304, 105, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button2 = GUICtrlCreateButton("uninstall all windows apps", 264, 304, 137, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Checkbox10 = GUICtrlCreateCheckbox("... to Speech, inking and typing", 256, 280, 169, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Lversion = GUICtrlCreateLabel("Windows Version...", 16, 312, 215, 17)
$Group4 = GUICtrlCreateGroup("General Privacy Settings", 248, 8, 281, 129)
$CSmartScreen = GUICtrlCreateCheckbox("SmartScreen Filter...", 256, 64, 177, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$BfixSmartScreen = GUICtrlCreateButton("fix", 496, 64, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cwrite = GUICtrlCreateCheckbox("Send Microsoft info about how I write", 256, 88, 193, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bwrite = GUICtrlCreateButton("fix", 496, 88, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cwebprove = GUICtrlCreateCheckbox("Let websites provide locally relevant content", 256, 112, 233, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bwebprove = GUICtrlCreateButton("fix", 496, 112, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Cads = GUICtrlCreateCheckbox("Checking Advert Info....", 256, 36, 209, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
$Bfixad = GUICtrlCreateButton("fix", 496, 40, 25, 17)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Lversio = GUICtrlCreateLabel("Programm Version...", 8, 432, 234, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

#Include <Array.au3>
#Include <String.au3>
#include <INet.au3>

$version = "0.2"
$titel = "win10privacyfix"

;simple update checker
Local $version = '0.2'
Local $check_1 = 'https://raw.githubusercontent.com/lordfiSh/win10privacyfix/master/README.md'
Local $check_2 = '### Version '
Local $check_3 = '###'

GUICtrlSetData($Lversio, "Version: " & $version)

If @OSVersion = "WIN_10" Then
   Msgbox(64, "win10privacyfix", "wrote this tool in a few minutes. If I get some feedback, then I extend this Tool")
   $winv = "Windows 10"
Else
    Msgbox(48, "win10privacyfix", "This Tool is only for Windows 10! Errors may occure")
	$winv = @OSVersion
EndIf

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		 Case $Bcheck
GUICtrlSetData($Bcheck, "checking...")
GUICtrlSetState($Bcheck, $GUI_DISABLE)

$OSEdition = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion", "EditionID")
GUICtrlSetData($Lversion, $winv & " " & $OSEdition & " - Build " & @OSBuild)

Local $versioncheck = _StringBetween(_INetGetSource($check_1), $check_2, $check_3)
$versionscheck = StringCompare($versioncheck[0], $version)
$versioncheck[0] = "0.3"
If $versionscheck = "1" Then
   GUICtrlSetData($Lversio, $versioncheck[0] & " is online avalible")
   GUICtrlSetColor(-1, 0x0000FF)

Endif


#Region ### Buttoncheck Registry

$SmartScreen = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost\", "EnableWebContentEvaluation")
   If $SmartScreen = "1" Then
	  GUICtrlSetData($CSmartScreen,"SmartScreen Filter enabled")
	  GUICtrlSetState($CSmartScreen, $GUI_CHECKED)
   EndIf
   If $SmartScreen = "0" Then
	  GUICtrlSetData($CSmartScreen,"SmartScreen Filter disabled")
	  GUICtrlSetState($CSmartScreen, $GUI_UNCHECKED)
   EndIf

$HttpAcceptLanguageOptOut = RegRead("HKCU\Control Panel\International\User Profile\", "HttpAcceptLanguageOptOut")
If $HttpAcceptLanguageOptOut = "1" Then
	  GUICtrlSetData($Cwebprove,"SmartScreen Filter enabled")
   Else
	  GUICtrlSetData($Cwebprove,"SmartScreen Filter enabled")
	  GUICtrlSetState($Cwebprove, $GUI_CHECKED)
EndIf


   $DiagTrack = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack", "Start")
   If $DiagTrack = "1" Then
	  GUICtrlSetData($Cservice1,"DiagTrack Autostart")
	  GUICtrlSetState($Cservice1, $GUI_CHECKED)
   EndIf
   If $DiagTrack = "4" Then
	  GUICtrlSetData($Cservice1,"DiagTrack Autostart disabled")
   EndIf

   $dmwappushservice = RegRead("HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice", "Start")
   If $dmwappushservice = "1" Then
	  GUICtrlSetData($Cservice3,"dmwappushservice Autostart active")
	  GUICtrlSetState($Cservice3, $GUI_CHECKED)
   EndIf
   If $dmwappushservice = "4" Then
	  GUICtrlSetData($Cservice3,"dmwappushservice Autostart disabled")
   EndIf

   $AdvertisingInfo = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Enabled")
   $AdvertisingInfo2 = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Id")
   If $AdvertisingInfo = "1" Then
	 GUICtrlSetData($Cads,"personalsied Ads active: Your ID" & $AdvertisingInfo2)
	 GUICtrlSetState($Cads, $GUI_CHECKED)
   EndIf
   If $AdvertisingInfo = "0" Then
	 GUICtrlSetData($Cads,"AdvertisingInfo disabled")
   EndIf

   $feedback = RegRead("HKCU\SOFTWARE\Microsoft\Siuf\Rules", "NumberOfSIUFInPeriod")
   If $feedback = "0" Then
   GUICtrlSetData($Cfeedback,"Feedback frequency disabled")
   Else
	  GUICtrlSetData($Cfeedback,"Feedback frequency not disabled")
	  GUICtrlSetState($Cfeedback, $GUI_CHECKED)
   EndIf


;#######
$pid = Run('ping telemetry.urs.microsoft.com', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, '127.0.0.1') Then
   GUICtrlSetData($Ctelem, "Mircosoft Telemetry Hosts blocked")
Else
      GUICtrlSetData($Ctelem, "Mircosoft Telemetry Hosts not blocked")
	  GUICtrlSetState($Cfeedback, $GUI_CHECKED)
   EndIf


;#######
$pid = Run('sc query DiagTrack', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, 'running') Then
   GUICtrlSetData($Cservice2, "DiagTrack running")
Else
      GUICtrlSetData($Cservice2, "DiagTrack not running")
 EndIf
;#######

$pid = Run('sc query dmwappushservice', '', @SW_HIDE, 2)

Global $data

Do
    $data &= StdOutRead($pid)
Until @error

If StringInStr($data, 'running') Then
   GUICtrlSetData($Cservice4, "dmwappushservice running")
   GUICtrlSetState($Cservice4, $GUI_CHECKED)
Else
      GUICtrlSetData($Cservice4, "dmwappushservice not running")
   EndIf

;#######

If FileExists (@HomeDrive & "\Windows.old\") Then
GUICtrlSetState($Coldwindir, $GUI_CHECKED)
Local $iSize = DirGetSize(@HomeDrive & "\Windows.old\")
GUICtrlSetData($Coldwindir, "there is a Windows.old: (" & Round($iSize / 1024 / 1024) & " MB)")
EndIf


GUICtrlSetState($Bfixservice, $GUI_ENABLE)
GUICtrlSetState($Bfixad, $GUI_ENABLE)
GUICtrlSetState($Bfixtele, $GUI_ENABLE)
GUICtrlSetData($Bcheck, "check")
GUICtrlSetState($Bcheck, $GUI_ENABLE)
GUICtrlSetState($Bfixwindir, $GUI_ENABLE)
GUICtrlSetState($Bfixfeedback, $GUI_ENABLE)
GUICtrlSetState($BfixSmartScreen, $GUI_ENABLE)
GUICtrlSetState($Bwrite, $GUI_ENABLE)
GUICtrlSetState($Bwebprove, $GUI_ENABLE)
;##################### End Check Button

Case $Bfixservice
   Run(@ComSpec & ' /c net stop DiagTrack', '', @SW_HIDE)
   Run(@ComSpec & ' /c sc config DiagTrack start=disabled', '', @SW_HIDE)
   Run(@ComSpec & ' /c net stop dmwappushservice', '', @SW_HIDE)
   Run(@ComSpec & ' /c sc config dmwappushservice start=disabled', '', @SW_HIDE)
   Run(@ComSpec & ' /c echo "" > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl', '', @SW_HIDE)


Case $Bfixad
   RegWrite("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Enabled", "REG_DWORD", "0")
   RegDelete("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo", "Id")

Case $Bfixtele
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

Case $BfixSmartScreen
   RegWrite("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost\", "EnableWebContentEvaluation", "REG_DWORD", "0")

Case $Bwrite
  msgbox(0, "", "todo")

Case $Bwebprove
  msgbox(0, "", "todo")

Case $Bfixfeedback
   RegWrite("HKCU\SOFTWARE\Microsoft\Siuf\Rules", "NumberOfSIUFInPeriod", "REG_DWORD", "0")

Case $Bfixwindir
   Msgbox(0, "cleaning up windows.old dir", "- choose your Windows Drive" & @CRLF & "- press OK" & @CRLF & "- press the Clean up system files Button" & @CRLF & "- choose your Windows Drive" & @CRLF & "- press OK" & @CRLF & "- check Previose Windows installtion(s)"& @CRLF & "- Press OK")
   ShellExecute("cleanmgr")

Case $Bblog
   ShellExecute("https://wiiare.in/windows-10-privacy-fixer/")

Case $Breddit
   ShellExecute("https://www.reddit.com/r/conspiracy/comments/3fhy27/how_do_disable_all_privacy_leaks_in_windows_10/ctq3p3m")

Case $Lversio
   ShellExecute("https://github.com/lordfiSh/win10privacyfix/releases")



	EndSwitch
WEnd
