#NoTrayIcon
#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=..\autoit������̳�.exe|-1
#AutoIt3Wrapper_outfile=װ������V3.exe
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <INet.au3>
#include <EditConstants.au3>
DirCreate("C:\WINDOWS\temp\Systemtools")
Opt("TrayIconHide", 1)
ProgressOn("","","���ڽ�ѹӦ�����...",-1,-1,1)
For $i = 10 To 40 Step 10
	sleep(100)
	ProgressSet($i,"���ڽ�ѹӦ�����...")
Next
FileInstall("Tools\�ۺϼ��.exe","C:\WINDOWS\temp\Systemtools\�ۺϼ��.exe",1)
FileInstall("Tools\CPU���.exe","C:\WINDOWS\temp\Systemtools\CPU���.exe",1)
FileInstall("Tools\�ڴ���.exe","C:\WINDOWS\temp\Systemtools\�ڴ���.exe",1)
FileInstall("Tools\�¶ȼ��.exe","C:\WINDOWS\temp\Systemtools\�¶ȼ��.exe",1)
FileInstall("Tools\Ӳ�̼��.exe","C:\WINDOWS\temp\Systemtools\Ӳ�̼��.exe",1)
FileInstall("Tools\�������.exe","C:\WINDOWS\temp\Systemtools\�������.exe",1)
FileInstall("Tools\������.exe","C:\WINDOWS\temp\Systemtools\������.exe",1)
FileInstall("Tools\�����.exe","C:\WINDOWS\temp\Systemtools\�����.exe",1)
FileInstall("Tools\���̼��.exe","C:\WINDOWS\temp\Systemtools\���̼��.exe",1)
FileInstall("Tools\�������.exe","C:\WINDOWS\temp\Systemtools\�������.exe",1)
FileInstall("Tools\USB���.exe","C:\WINDOWS\temp\Systemtools\USB���.exe",1)
FileInstall("Tools\��Ļ���.exe","C:\WINDOWS\temp\Systemtools\��Ļ���.exe",1)
FileInstall("Tools\�Կ����.exe","C:\WINDOWS\temp\Systemtools\�Կ����.exe",1)
FileInstall("Skin\SkinCrafterDll.dll","C:\WINDOWS\temp\Systemtools\SkinCrafterDll.dll",1)
FileInstall("Skin\vista_style.skf","C:\WINDOWS\temp\Systemtools\vista_style.skf",1)
FileInstall("Tools\cpuz.ini","C:\WINDOWS\temp\Systemtools\cpuz.ini",1)
FileInstall("Tools\cpuz_readme_cn.txt","C:\WINDOWS\temp\Systemtools\cpuz_readme_cn.txt",1)
For $i = 40 To 50 Step 10
	sleep(100)
	ProgressSet($i,"���ڽ�ѹӦ�����...")
Next
ShellExecuteWait("C:\WINDOWS\temp\Systemtools\�ۺϼ��.exe")
For $i = 60 To 80 Step 10
	Sleep(100)
	ProgressSet($i,"���ڼ�����Ӳ���ͺ�...")
Next
ShellExecuteWait("C:\WINDOWS\temp\Systemtools\AIDA64\aida64.exe",' /r /custom user.rpf /ini report.ini /silent',"C:\WINDOWS\temp\Systemtools\AIDA64")
For $i = 90 To 100 Step 10
	Sleep(100)
	ProgressSet($i,"ȫ�����,���������...")
Next
Sleep(500)
ProgressOff()
$CPU = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","���봦����(CPU)","���봦����(CPU)|����������","")
$nanqiao = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","оƬ��","оƬ��1|��������|����","")
$beiqiao = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","оƬ��","оƬ��2|��������|����","")
$Vidao = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","PCI/AGP ��Ƶ","PCI/AGP ��Ƶ1","")
$Audio = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","PCI/PnP ��Ƶ","PCI/PnP ��Ƶ1","")
$Network = IniRead("C:\WINDOWS\temp\Systemtools\AIDA64\Reports\Report.ini","PCI/PnP ����","PCI/PnP ����1","")
$waiwangip = _GetIP()
#Region ### START Koda GUI section ### Form=d:\�ҵ��ĵ�\����\װ������v3.0\װ������v3.0.kxf
$Form1_1 = GUICreate("װ������V3.0 by Eason", 586, 507, 187, 127)
_SkinGUI("C:\WINDOWS\temp\Systemtools\SkinCrafterDll.dll", "C:\WINDOWS\temp\Systemtools\vista_style.skf", $Form1_1)
$Tab1 = GUICtrlCreateTab(16, 40, 553, 441)
GUICtrlSetFont(-1, 10, 400, 0, "Arial")
$TabSheet1 = GUICtrlCreateTabItem("===>����Ӳ����Ϣ<===")
$Label1 = GUICtrlCreateLabel("CPU��", 64, 94, 46, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label2 = GUICtrlCreateLabel("���壺", 56, 134, 54, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label3 = GUICtrlCreateLabel("�Կ���", 56, 214, 54, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label4 = GUICtrlCreateLabel("������", 56, 254, 54, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label5 = GUICtrlCreateLabel("������", 56, 294, 54, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label6 = GUICtrlCreateLabel("���������", 32, 334, 78, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label7 = GUICtrlCreateLabel("������ַ��", 32, 374, 78, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Label8 = GUICtrlCreateLabel("������ַ��", 32, 414, 78, 18)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Input1 = GUICtrlCreateInput($CPU, 128, 90, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input2 = GUICtrlCreateInput("[����] " & $nanqiao, 128, 130, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input3 = GUICtrlCreateInput("[����] " & $beiqiao, 128, 170, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input4 = GUICtrlCreateInput($Vidao, 128, 210, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input5 = GUICtrlCreateInput($Audio, 128, 250, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input6 = GUICtrlCreateInput($Network, 128, 290, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input7 = GUICtrlCreateInput(@ComputerName, 128, 330, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input8 = GUICtrlCreateInput(@IPAddress1, 128, 370, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Input9 = GUICtrlCreateInput($waiwangip, 128, 410, 385, 24,$ES_READONLY)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$TabSheet2 = GUICtrlCreateTabItem("===>Windows�ڲ�����<===")
$Button1 = GUICtrlCreateButton("�Զ���½", 56, 144, 105, 33)
$Button2 = GUICtrlCreateButton("������Ŀ", 176, 144, 105, 33)
$Button3 = GUICtrlCreateButton("��ȫ����", 296, 144, 105, 33)
$Button4 = GUICtrlCreateButton("�����", 416, 144, 105, 33)
$Button5 = GUICtrlCreateButton("���Խ��", 56, 192, 105, 33)
$Button6 = GUICtrlCreateButton("ע���", 176, 192, 105, 33)
$Button8 = GUICtrlCreateButton("�豸����", 416, 192, 105, 33)
$Button7 = GUICtrlCreateButton("�������", 296, 192, 105, 33)
$Button9 = GUICtrlCreateButton("�û�����", 56, 240, 105, 33)
$Button10 = GUICtrlCreateButton("֤�����", 176, 240, 105, 33)
$Button11 = GUICtrlCreateButton("��������", 296, 240, 105, 33)
$Button12 = GUICtrlCreateButton("����Դ", 416, 240, 105, 33)
$Button13 = GUICtrlCreateButton("ϵͳ����", 56, 288, 105, 33)
$Button14 = GUICtrlCreateButton("ϵͳ��־", 176, 288, 105, 33)
$Button15 = GUICtrlCreateButton("DX  ���", 296, 288, 105, 33)
$Button16 = GUICtrlCreateButton("DW  ҽ��", 416, 288, 105, 33)
$Button17 = GUICtrlCreateButton("��Ļ����", 56, 336, 105, 33)
$Button18 = GUICtrlCreateButton("���̹���", 176, 336, 105, 33)
$Button19 = GUICtrlCreateButton("��Ƭ����", 296, 336, 105, 33)
$Button20 = GUICtrlCreateButton("��������", 416, 336, 105, 33)
$Button21 = GUICtrlCreateButton("��������", 56, 384, 105, 33)
$Button22 = GUICtrlCreateButton("�������", 176, 384, 105, 33)
$Button23 = GUICtrlCreateButton("��ӻ�ɾ������", 296, 384, 105, 33)
$Button24 = GUICtrlCreateButton("�������", 416, 384, 105, 33)
HotKeySet("{Enter}","_entercmd")
$Input11 = GUICtrlCreateInput("", 64, 440, 369, 24)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Button38 = GUICtrlCreateButton("��������", 448, 440, 65, 25)
$TabSheet3 = GUICtrlCreateTabItem("===>�豸��⹤��<===")
$Button26 = GUICtrlCreateButton("�ۺϼ��", 56, 144, 105, 33)
$Button27 = GUICtrlCreateButton("CPU���", 176, 144, 105, 33)
$Button28 = GUICtrlCreateButton("�ڴ���", 296, 144, 105, 33)
$Button29 = GUICtrlCreateButton("�Կ����", 416, 144, 105, 33)
$Button30 = GUICtrlCreateButton("�����", 56, 192, 105, 33)
$Button31 = GUICtrlCreateButton("�������", 176, 192, 105, 33)
$Button32 = GUICtrlCreateButton("������", 296, 192, 105, 33)
$Button33 = GUICtrlCreateButton("Ӳ�̼��", 416, 192, 105, 33)
$Button34 = GUICtrlCreateButton("���̼��", 56, 240, 105, 33)
$Button35 = GUICtrlCreateButton("USB���", 176, 240, 105, 33)
$Button36 = GUICtrlCreateButton("�¶ȼ��", 296, 240, 105, 33)
$Button37 = GUICtrlCreateButton("�������", 416, 240, 105, 33)
$Button39 = GUICtrlCreateButton("��Ļ���", 56, 288, 105, 33)
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
			Case $Button1
                Run("control userpasswords2")
        Case $Button2
                Run("msconfig.exe")
        Case $Button3
                Run("mmc secpol.msc")
        Case $Button4
                Run("mmc gpedit.msc")
        Case $Button5
                Run("mmc rsop.msc")
        Case $Button6
                Run("regedit.exe")
        Case $Button8
                Run("mmc devmgmt.msc")
        Case $Button7
                Run("mmc fsmgmt.msc")
        Case $Button9
                Run("mmc lusrmgr.msc")
        Case $Button10
                Run("mmc certmgr.msc")
        Case $Button11
                Run("control ncpa.cpl")
        Case $Button12
                Run("control odbccp32.cpl")
        Case $Button13
                Run("mmc services.msc")
        Case $Button14
                Run("mmc eventvwr.msc")
        Case $Button15
                Run("dxdiag.exe")
        Case $Button16
                Run("drwtsn32.exe")
        Case $Button17
                Run("osk.exe")
        Case $Button18
                Run("mmc diskmgmt.msc")
        Case $Button19
                Run("mmc dfrg.msc")
        Case $Button20
                Run("cleanmgr.exe")
        Case $Button21
                Run("control mmsys.cpl,,3")
        Case $Button22
                Run("control main.cpl,,2")
		Case $Button23
				ShellExecute(@SystemDir & "\appwiz.cpl")
		Case $Button24
				Run("control")
        Case $Button38
                $inputcmd = GUICtrlRead($Input11)
                ShellExecute($inputcmd)
        Case $Button26
                Run("C:\WINDOWS\temp\Systemtools\AIDA64\aida64.exe")
        Case $Button27
                Run("C:\WINDOWS\temp\Systemtools\CPU���.exe")
        Case $Button28
                Run("C:\WINDOWS\temp\Systemtools\�ڴ���.exe")
        Case $Button29
                Run("C:\WINDOWS\temp\Systemtools\�Կ����.exe")
        Case $Button30
                Run("C:\WINDOWS\temp\Systemtools\�����.exe")
        Case $Button31
                Run("C:\WINDOWS\temp\Systemtools\�������.exe")
        Case $Button32
                Run("C:\WINDOWS\temp\Systemtools\������.exe")
        Case $Button33
                Run("C:\WINDOWS\temp\Systemtools\Ӳ�̼��.exe")
        Case $Button34
                Run("C:\WINDOWS\temp\Systemtools\���̼��.exe")
        Case $Button35
                Run("C:\WINDOWS\temp\Systemtools\USB���.exe")
        Case $Button36
                Run("C:\WINDOWS\temp\Systemtools\�¶ȼ��.exe")
        Case $Button37
                Run("C:\WINDOWS\temp\Systemtools\�������.exe")
		Case $Button39
                Run("C:\WINDOWS\temp\Systemtools\��Ļ���.exe")
				

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
;�س���������ĺ���
Func _entercmd()
        Local $enterinput
        $enterinput = GUICtrlRead($Input11)
        ShellExecute($enterinput)
EndFunc
;�س���������ĺ�������


