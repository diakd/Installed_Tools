#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=..\autoit������̳�.exe|-1
#AutoIt3Wrapper_outfile=װ������V2.0.exe
#AutoIt3Wrapper_Compression=4
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
TrayTip(" ","�������ڽ�ѹ�С�����",5)
Opt("TrayIconHide", 1)
FileInstall("Tools\�ۺϼ��.exe","C:\Program Files\�ۺϼ��.exe",1)
FileInstall("Tools\CPU���.exe","C:\Program Files\CPU���.exe",1)
FileInstall("Tools\�ڴ���.exe","C:\Program Files\�ڴ���.exe",1)
FileInstall("Tools\�¶ȼ��.exe","C:\Program Files\�¶ȼ��.exe",1)
FileInstall("Tools\Ӳ�̼��.exe","C:\Program Files\Ӳ�̼��.exe",1)
FileInstall("Tools\�������.exe","C:\Program Files\�������.exe",1)
FileInstall("Tools\������.exe","C:\Program Files\������.exe",1)
FileInstall("Tools\�����.exe","C:\Program Files\�����.exe",1)
FileInstall("Tools\���̼��.exe","C:\Program Files\���̼��.exe",1)
FileInstall("Tools\�������.exe","C:\Program Files\�������.exe",1)
FileInstall("Tools\USB���.exe","C:\Program Files\USB���.exe",1)
FileInstall("Tools\��Ļ���.exe","C:\Program Files\��Ļ���.exe",1)
FileInstall("Tools\�Կ����.exe","C:\Program Files\�Կ����.exe",1)
FileInstall("Skin\SkinCrafterDll.dll","C:\Program Files\SkinCrafterDll.dll",1)
FileInstall("Skin\vista_style.skf","C:\Program Files\vista_style.skf",1)
FileInstall("Tools\cpuz.ini","C:\Program Files\cpuz.ini",1)
FileInstall("Tools\cpuz_readme_cn.txt","C:\Program Files\cpuz_readme_cn.txt",1)
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("װ������V2.0 by Eason", 560, 519, 192, 124, -1, 0)
_SkinGUI("C:\Program Files\SkinCrafterDll.dll", "C:\Program Files\vista_style.skf", $Form1)
$Button1 = GUICtrlCreateButton("�ۺϼ��", 205, 48, 145, 41)
$Button2 = GUICtrlCreateButton("CPU���", 37, 105, 145, 41)
$Button3 = GUICtrlCreateButton("�Կ����", 373, 105, 145, 41)
$Button4 = GUICtrlCreateButton("�ڴ���", 205, 105, 145, 41)
$Button5 = GUICtrlCreateButton("�¶ȼ��", 37, 161, 145, 41)
$Button6 = GUICtrlCreateButton("Ӳ�̼��", 373, 161, 145, 41)
$Button7 = GUICtrlCreateButton("�������", 206, 161, 145, 41)
$Button8 = GUICtrlCreateButton("������", 37, 216, 145, 41)
$Button9 = GUICtrlCreateButton("�����", 373, 216, 145, 41)
$Button10 = GUICtrlCreateButton("���̼��", 205, 216, 145, 41)
$Button11 = GUICtrlCreateButton("�������", 37, 272, 145, 41)
$Button12 = GUICtrlCreateButton("USB���", 373, 272, 145, 41)
$Button13 = GUICtrlCreateButton("��Ļ���", 206, 272, 145, 41)
$Button14 = GUICtrlCreateButton("�豸������", 37, 329, 145, 41)
$Button15 = GUICtrlCreateButton("����Ա༭��", 373, 329, 145, 41)
$Button16 = GUICtrlCreateButton("ϵͳ����ʹ�ó���", 206, 329, 145, 41)
$Button17 = GUICtrlCreateButton("ע���༭��", 37, 384, 145, 41)
$Button18 = GUICtrlCreateButton("��ӻ�ɾ������", 373, 384, 145, 41)
$Button19 = GUICtrlCreateButton("�������", 205, 384, 145, 41)
$Button20 = GUICtrlCreateButton("����", 37, 440, 145, 41)
$Button21 = GUICtrlCreateButton("���̹���", 373, 440, 145, 41)
$Button22 = GUICtrlCreateButton("��������", 206, 440, 145, 41)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			Run("C:\Program Files\�ۺϼ��.exe")
			Case $Button2
			Run("C:\Program Files\CPU���.exe")
			Case $Button3
			Run("C:\Program Files\�Կ����.exe")
			Case $Button4
			Run("C:\Program Files\�ڴ���.exe")
			Case $Button5
			Run("C:\Program Files\�¶ȼ��.exe")
			Case $Button6
			Run("C:\Program Files\Ӳ�̼��.exe")
			Case $Button7
			Run("C:\Program Files\�������.exe")
			Case $Button8
			Run("C:\Program Files\������.exe")
			Case $Button9
			Run("C:\Program Files\�����.exe")
			Case $Button10
			Run("C:\Program Files\���̼��.exe")
			Case $Button11
			Run("C:\Program Files\�������.exe")
			Case $Button12
			Run("C:\Program Files\USB���.exe")
			Case $Button13
			Run("C:\Program Files\��Ļ���.exe")
			Case $Button14
			ShellExecute(@SystemDir & "\devmgmt.msc")
			Case $Button15
			ShellExecute(@SystemDir & "\gpedit.msc")
			Case $Button16
			Run("msconfig")
			Case $Button17
			Run("regedit")
			Case $Button18
			ShellExecute(@SystemDir & "\appwiz.cpl")
			Case $Button19
			Run("control")
			Case $Button20
			ShellExecute(@SystemDir & "\services.msc")
			Case $Button21
			ShellExecute(@SystemDir & "\diskmgmt.msc")
			Case $Button22
			Run("cleanmgr")

	EndSwitch
WEnd
;Ƥ������
Func _SkinGUI($SkincrafterDll, $SkincrafterSkin, $Handle) 
   $Dll = DllOpen($SkincrafterDll) 
   DllCall($Dll, "int:cdecl", "InitLicenKeys", "wstr", "1", "wstr", "", "wstr", "1@1.com", "wstr", "1") 
   DllCall($Dll, "int:cdecl", "InitDecoration", "int", 1) 
   DllCall($Dll, "int:cdecl", "LoadSkinFromFile", "wstr", $SkincrafterSkin) 
   DllCall($Dll, "int:cdecl", "DecorateAs", "int", $Handle, "int", 25) 
   DllCall($Dll, "int:cdecl", "ApplySkin")
EndFunc
