#NoTrayIcon
#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=..\autoit������̳�.exe
#AutoIt3Wrapper_outfile=װ������V3.2 X86&X64.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=װ������V3.2
#AutoIt3Wrapper_Res_Fileversion=3.2.0.0
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <INet.au3>
#include <EditConstants.au3>
#Include <WinAPIEx.au3>
#Include <GuiListView.au3>
#Include <GuiListView.au3>
DirCreate(@ProgramFilesDir & "\Systemtools")
Opt("TrayIconHide", 1)
Global $Systemtools = @ProgramFilesDir & "\Systemtools"
ProgressOn("","","���ڽ�ѹӦ�����...",-1,-1,1)
For $i = 10 To 40 Step 10
	sleep(100)
	ProgressSet($i,"���ڽ�ѹӦ�����...")
Next
FileInstall("Tools\�ۺϼ��.exe",$Systemtools & "\�ۺϼ��.exe",1)
FileInstall("Tools\CPU���.exe",$Systemtools & "\CPU���.exe",1)
FileInstall("Tools\�ڴ���.exe",$Systemtools & "\�ڴ���.exe",1)
FileInstall("Tools\�¶ȼ��.exe",$Systemtools & "\�¶ȼ��.exe",1)
FileInstall("Tools\Ӳ�̼��.exe",$Systemtools & "\Ӳ�̼��.exe",1)
FileInstall("Tools\�������.exe",$Systemtools & "\�������.exe",1)
FileInstall("Tools\������.exe",$Systemtools & "\������.exe",1)
FileInstall("Tools\�����.exe",$Systemtools & "\�����.exe",1)
FileInstall("Tools\���̼��.exe",$Systemtools & "\���̼��.exe",1)
FileInstall("Tools\�������.exe",$Systemtools & "\�������.exe",1)
FileInstall("Tools\USB���.exe",$Systemtools & "\USB���.exe",1)
FileInstall("Tools\��Ļ���.exe",$Systemtools & "\��Ļ���.exe",1)
FileInstall("Tools\�Կ����.exe",$Systemtools & "\�Կ����.exe",1)
FileInstall("Skin\Skin.dll",$Systemtools & "\Skin.dll",1)
FileInstall("Skin\aero.she",$Systemtools & "\aero.she",1)
FileInstall("Tools\cpuz.ini",$Systemtools & "\cpuz.ini",1)
FileInstall("Tools\cpuz_readme_cn.txt",$Systemtools & "\cpuz_readme_cn.txt",1)
For $i = 40 To 50 Step 10
	sleep(100)
	ProgressSet($i,"���ڽ�ѹӦ�����...")
Next
ShellExecuteWait($Systemtools & "\�ۺϼ��.exe")
For $i = 60 To 80 Step 10
	Sleep(100)
	ProgressSet($i,"���ڼ�����Ӳ���ͺ�...")
Next
ShellExecuteWait($Systemtools & "\AIDA64\aida64.exe",' /r /custom user.rpf /ini report.ini /silent',$Systemtools & "\AIDA64")
For $i = 90 To 100 Step 10
	Sleep(100)
	ProgressSet($i,"ȫ�����,���������...")
Next
Sleep(500)
ProgressOff()
$CPU = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","���봦����(CPU)","���봦����(CPU)|����������","")
$beiqiao = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","оƬ��","оƬ��1|��������|����","")
$nanqiao = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","оƬ��","оƬ��2|��������|����","")
$Vidao = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/AGP ��Ƶ","PCI/AGP ��Ƶ1","")
$Audio = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/PnP ��Ƶ","PCI/PnP ��Ƶ1","")
$Network = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/PnP ����","PCI/PnP ����1","")
$waiwangip = _GetIP()
;Ƥ������
$skins = $Systemtools & "\aero.she"
$Dll = DllOpen($Systemtools & "\Skin.dll")
DllCall($Dll, "int", "SkinH_AttachEx", "str", $skins, "str", "mhgd")
DllCall($Dll, "int", "SkinH_SetAero", "int", 1)
;Ƥ�����ý���
#Region ### START Koda GUI section ### Form=D:\�ҵ��ĵ�\����\װ������V3.1\װ������V3.0.kxf
$Form1_1 = GUICreate("װ������V3.2 by Eason", 586, 507, 222, 136)
$Tab1 = GUICtrlCreateTab(16, 40, 553, 441)
GUICtrlSetFont(-1, 9, 400, 0, "Arial")
$TabSheet1 = GUICtrlCreateTabItem("����Ӳ����Ϣ")
$ListView1 = GUICtrlCreateListView("Ӳ��|�ͺ� ", 32, 175, 513, 249)
GUICtrlSetFont(-1, 11, 400, 0, "MS Sans Serif")
_GUICtrlListView_SetColumnWidth($ListView1,0,80);������Ŀ�Ŀ��
_GUICtrlListView_SetColumnWidth($ListView1,1,410);������Ŀ�Ŀ��
GUICtrlCreateListViewItem("CPU|" & $CPU,$ListView1)
GUICtrlCreateListViewItem("����|[����] " & $beiqiao,$ListView1)
GUICtrlCreateListViewItem("|[����] " & $nanqiao,$ListView1)
GUICtrlCreateListViewItem("�Կ�|" & $Vidao,$ListView1)
GUICtrlCreateListViewItem("����|" & $Audio,$ListView1)
GUICtrlCreateListViewItem("����|" & $Network,$ListView1)
GUICtrlCreateListViewItem("�������|" & @ComputerName,$ListView1)
GUICtrlCreateListViewItem("������ַ|" & @IPAddress1,$ListView1)
GUICtrlCreateListViewItem("������ַ|" & $waiwangip,$ListView1)
$Label = GUICtrlCreateLabel("����Ӳ���ͺ�", 200, 112, 276, 37)
GUICtrlSetFont(-1, 24, 400, 0, "����")
$Button25 = GUICtrlCreateButton("���¼��", 176, 432, 209, 33)
$TabSheet2 = GUICtrlCreateTabItem("Windows�ڲ�����")
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
$TabSheet3 = GUICtrlCreateTabItem("�豸��⹤��")
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
			_WinAPI_AnimateWindow($Form1_1,BitOR($AW_BLEND, $AW_HIDE),450) ;������ʧЧ��
			Exit_()
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
        Case $Button26
                Run($Systemtools & "\AIDA64\aida64.exe")
        Case $Button27
                Run($Systemtools & "\CPU���.exe")
        Case $Button28
                Run($Systemtools & "\�ڴ���.exe")
        Case $Button29
                Run($Systemtools & "\�Կ����.exe")
        Case $Button30
                Run($Systemtools & "\�����.exe")
        Case $Button31
                Run($Systemtools & "\�������.exe")
        Case $Button32
                Run($Systemtools & "\������.exe")
        Case $Button33
                Run($Systemtools & "\Ӳ�̼��.exe")
        Case $Button34
                Run($Systemtools & "\���̼��.exe")
        Case $Button35
                Run($Systemtools & "\USB���.exe")
        Case $Button36
                Run($Systemtools & "\�¶ȼ��.exe")
        Case $Button37
                Run($Systemtools & "\�������.exe")
		Case $Button39
                Run($Systemtools & "\��Ļ���.exe")
		Case $Button25
				echo()
				
				

	EndSwitch
WEnd
;�˳�ɾ���ļ��ж���
Func Exit_()
	GUISetState(@SW_SHOW)
	DllClose($Dll)
	DirRemove($Systemtools,1)
	Exit
EndFunc
;����ɨ�谴ť����
Func echo()
	_GUICtrlListView_DeleteAllItems($ListView1);ˢ���б���
	ProgressOn("","","���ڼ��Ӳ����...",-1,-1,1)
	For $i = 10 To 70 Step 10
		Sleep(100)
	ProgressSet($i,"���ڼ��Ӳ����...")
	Next
	ShellExecuteWait($Systemtools & "\AIDA64\aida64.exe",' /r /custom user.rpf /ini report.ini /silent',$Systemtools & "\AIDA64")
	For $i = 70 To 90 Step 10
		Sleep(100)
	ProgressSet($i,"���ڵ�����...")
	Next
	$CPUC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","���봦����(CPU)","���봦����(CPU)|����������","")
	$beiqiaoC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","оƬ��","оƬ��1|��������|����","")
	$nanqiaoC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","оƬ��","оƬ��2|��������|����","")
	$VidaoC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/AGP ��Ƶ","PCI/AGP ��Ƶ1","")
	$AudioC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/PnP ��Ƶ","PCI/PnP ��Ƶ1","")
	$NetworkC = IniRead($Systemtools & "\AIDA64\Reports\Report.ini","PCI/PnP ����","PCI/PnP ����1","")
	$waiwangipC = _GetIP()
	GUICtrlCreateListViewItem("CPU|" & $CPUC,$ListView1)
	GUICtrlCreateListViewItem("����|[����] " & $beiqiaoC,$ListView1)
	GUICtrlCreateListViewItem("|[����] " & $nanqiaoC,$ListView1)
	GUICtrlCreateListViewItem("�Կ�|" & $VidaoC,$ListView1)
	GUICtrlCreateListViewItem("����|" & $AudioC,$ListView1)
	GUICtrlCreateListViewItem("����|" & $NetworkC,$ListView1)
	GUICtrlCreateListViewItem("�������|" & @ComputerName,$ListView1)
	GUICtrlCreateListViewItem("������ַ|" & @IPAddress1,$ListView1)
	GUICtrlCreateListViewItem("������ַ|" & $waiwangipC,$ListView1)
	For $i = 90 To 100 Step 10
		Sleep(100)
	ProgressSet($i,"������ɣ�")
	Next
	Sleep(300)
	ProgressOff()
EndFunc

	

	