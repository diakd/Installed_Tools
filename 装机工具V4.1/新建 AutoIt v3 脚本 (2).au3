#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#Include <ACN_MISC.au3>
#include <INet.au3>
#Include <WinAPIEx.au3>
#Include <GuiListView.au3>
$Fb = IniReadSection("Ini\Resolution.ini","Resolution")
Global $DesktopWidth = @DesktopWidth , $DesktopHeight = @DesktopHeight , $DesktopDepth = @DesktopDepth , $DesktopRefresh = @DesktopRefresh 
#Region ### START Koda GUI section ### Form=D:\�ҵ��ĵ�\����\װ������V4.1\װ������V3.0.kxf
$Form1_1 = GUICreate("Form1", 586, 507, 184, 141)
$Tab1 = GUICtrlCreateTab(16, 40, 553, 441)
GUICtrlSetFont(-1, 9, 400, 0, "Arial")
$TabSheet1 = GUICtrlCreateTabItem("TabSheet1")
$ListView1 = GUICtrlCreateListView("", 32, 175, 513, 249)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label = GUICtrlCreateLabel("Label", 160, 112, 84, 37)
GUICtrlSetFont(-1, 24, 400, 0, "����")
$Button25 = GUICtrlCreateButton("Button25", 176, 432, 209, 33)
$TabSheet2 = GUICtrlCreateTabItem("TabSheet2")
$Button1 = GUICtrlCreateButton("Button1", 56, 143, 105, 33)
$Button2 = GUICtrlCreateButton("Button1", 176, 143, 105, 33)
$Button3 = GUICtrlCreateButton("Button1", 296, 143, 105, 33)
$Button4 = GUICtrlCreateButton("Button1", 416, 143, 105, 33)
$Button5 = GUICtrlCreateButton("Button1", 56, 191, 105, 33)
$Button6 = GUICtrlCreateButton("Button1", 176, 191, 105, 33)
$Button8 = GUICtrlCreateButton("Button1", 416, 191, 105, 33)
$Button7 = GUICtrlCreateButton("Button1", 296, 191, 105, 33)
$Button9 = GUICtrlCreateButton("Button1", 56, 239, 105, 33)
$Button10 = GUICtrlCreateButton("Button1", 176, 239, 105, 33)
$Button11 = GUICtrlCreateButton("Button1", 296, 239, 105, 33)
$Button12 = GUICtrlCreateButton("Button1", 416, 239, 105, 33)
$Button13 = GUICtrlCreateButton("Button1", 56, 287, 105, 33)
$Button14 = GUICtrlCreateButton("Button1", 176, 287, 105, 33)
$Button15 = GUICtrlCreateButton("Button1", 296, 287, 105, 33)
$Button16 = GUICtrlCreateButton("Button1", 416, 287, 105, 33)
$Button17 = GUICtrlCreateButton("Button1", 56, 335, 105, 33)
$Button18 = GUICtrlCreateButton("Button1", 176, 335, 105, 33)
$Button19 = GUICtrlCreateButton("Button1", 296, 335, 105, 33)
$Button20 = GUICtrlCreateButton("Button1", 416, 335, 105, 33)
$Button21 = GUICtrlCreateButton("Button1", 56, 383, 105, 33)
$Button22 = GUICtrlCreateButton("Button1", 176, 383, 105, 33)
$Button23 = GUICtrlCreateButton("Button1", 296, 383, 105, 33)
$Button24 = GUICtrlCreateButton("Button1", 416, 383, 105, 33)
$Input11 = GUICtrlCreateInput("Input11", 64, 439, 369, 24)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Button38 = GUICtrlCreateButton("Button38", 448, 439, 65, 25)
$TabSheet3 = GUICtrlCreateTabItem("TabSheet3")
$Button26 = GUICtrlCreateButton("Button1", 56, 143, 105, 33)
$Button27 = GUICtrlCreateButton("Button1", 176, 143, 105, 33)
$Button28 = GUICtrlCreateButton("Button1", 296, 143, 105, 33)
$Button29 = GUICtrlCreateButton("Button1", 416, 143, 105, 33)
$Button30 = GUICtrlCreateButton("Button1", 56, 191, 105, 33)
$Button31 = GUICtrlCreateButton("Button1", 176, 191, 105, 33)
$Button32 = GUICtrlCreateButton("Button1", 296, 191, 105, 33)
$Button33 = GUICtrlCreateButton("Button1", 416, 191, 105, 33)
$Button34 = GUICtrlCreateButton("Button1", 56, 239, 105, 33)
$Button35 = GUICtrlCreateButton("Button1", 176, 239, 105, 33)
$Button36 = GUICtrlCreateButton("Button1", 296, 239, 105, 33)
$Button37 = GUICtrlCreateButton("Button1", 416, 239, 105, 33)
$Button39 = GUICtrlCreateButton("Button1", 56, 287, 105, 33)
$TabSheet4 = GUICtrlCreateTabItem("TabSheet4")
GUICtrlSetState(-1,$GUI_SHOW)
$ListView2 = GUICtrlCreateListView("��Ļ���|��Ļ�߶�|������ɫ���|��Ļˢ����", 180, 88, 370, 50)
GUICtrlCreateListViewItem($DesktopWidth & "|" & $DesktopHeight & "|" & $DesktopDepth & "|" & $DesktopRefresh,$ListView2)
$Label1 = GUICtrlCreateLabel("��ǰ�ֱ��ʣ�", 72, 100, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Button40 = GUICtrlCreateButton("��  ��", 144, 440, 121, 33)
$Button41 = GUICtrlCreateButton("��  ��", 328, 440, 121, 33)
HotKeySet("^r","huifu")
$Label2 = GUICtrlCreateLabel("���÷ֱ��ʣ�", 72, 153, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Combo1 = GUICtrlCreateCombo("",180, 150, 370, 25,$CBS_DROPDOWNLIST)
GUICtrlSetData($Combo1,$Fb[1][0]&"|"&$Fb[2][0]&"|"&$Fb[3][0]&"|"&$Fb[4][0]&"|"&$Fb[5][0]&"|"&$Fb[6][0]&"|"&$Fb[7][0]&"|"&$Fb[8][0]&"|"&$Fb[9][0]&"|"&$Fb[10][0]&"|"&$Fb[11][0]&"|"&$Fb[12][0]&"|"&$Fb[13][0]&"|"&$Fb[14][0]&"|"&$Fb[15][0]&"|"&$Fb[16][0]&"|"&$Fb[17][0]&"|"&$Fb[18][0]&"|"&$Fb[19][0]&"|"&$Fb[20][0]&"|"&$Fb[21][0])
$Label3 = GUICtrlCreateLabel("˵��:�����С�ĵ�����µ��Ժ������޷���ָ���Ť����ֱ�Ӱ�Ctrl+R��       �ָ�����ǰ����                                                    1����CRT����ʾ��17��������4��3������ѷֱ���Ϊ1024X768��            2����LCD��17���19��������5��4������ѷֱ�����1280��1024��          3����LCD��19�������16��10������ѷֱ�����1440��900��              4����LCD��22�������16��10������ѷֱ�����1680��1050��             5��1280��800������13.3����14.1���ʼǱ���Ļ���õķֱ���             6��1366��768��1920��1080��1600��900����16:9�����ķֱ��ʡ�          7��1024��600����9��10���������ķֱ��ʡ�                            8��1920��1200����24�������16��10��Һ���ķֱ��ʡ�                  9��2560x1440��ƻ��27��ר�á�                                      10��2560x1600��30��Һ��ר�á�", 32, 230, 516, 257)
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetFont(-1, 11.5, 400, 0, "����")
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button40
			$FbFz = GUICtrlRead($Combo1)
			fenbianlv()
			xianshi()
		Case $Button41
			huifu()

	EndSwitch
WEnd
Func fenbianlv()
	If $FbFz = "800  x  600  x  32  x  60" Then
		_ChangeScreenRes(800,600,32,60)
	EndIf
	If $FbFz = "800  x  600  x  32  x  75" Then
		_ChangeScreenRes(800,600,32,75)
	EndIf
	If $FbFz = "800  x  600  x  32  x  85" Then
		_ChangeScreenRes(800,600,32,85)
	EndIf
	If $FbFz = "1024 x  600  x  32  x  60" Then
		_ChangeScreenRes(1024,600,32,60)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  60" Then
		_ChangeScreenRes(1024,768,32,60)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  70" Then
		_ChangeScreenRes(1024,768,32,70)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  75" Then
		_ChangeScreenRes(1024,768,32,75)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  85" Then
		_ChangeScreenRes(1024,768,32,85)
	EndIf
	If $FbFz = "1280 x  800  x  32  x  60" Then
		_ChangeScreenRes(1280,800,32,60)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  60" Then
		_ChangeScreenRes(1280,1024,32,60)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  70" Then
		_ChangeScreenRes(1280,1024,32,70)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  75" Then
		_ChangeScreenRes(1280,1024,32,75)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  85" Then
		_ChangeScreenRes(1280,1024,32,85)
	EndIf
	If $FbFz = "1366 x  768  x  32  x  60" Then
		_ChangeScreenRes(1366,768,32,60)
	EndIf
	If $FbFz = "1440 x  900  x  32  x  60" Then
		_ChangeScreenRes(1440,900,32,60)
	EndIf
	If $FbFz = "1600 x  900  x  32  x  60" Then
		_ChangeScreenRes(1600,900,32,60)
	EndIf
	If $FbFz = "1680 x  1050 x  32  x  60" Then
		_ChangeScreenRes(1680,1050,32,60)
	EndIf
	If $FbFz = "1920 x  1080 x  32  x  60" Then
		_ChangeScreenRes(1920,1080,32,60)
	EndIf
	If $FbFz = "1920 x  1200 x  32  x  60" Then
		_ChangeScreenRes(1920,1200,32,60)
	EndIf
	If $FbFz = "2560 x  1440 x  32  x  60" Then
		_ChangeScreenRes(2560,1440,32,60)
	EndIf
	If $FbFz = "2560 x  1600 x  32  x  60" Then
		_ChangeScreenRes(2560,1600,32,60)
	EndIf
EndFunc
;�����б���������ʾ����
Func xianshi()
	Global $DesktopWidth1 = @DesktopWidth , $DesktopHeight1 = @DesktopHeight , $DesktopDepth1 = @DesktopDepth , $DesktopRefresh1 = @DesktopRefresh 
	_GUICtrlListView_DeleteAllItems($ListView2);ˢ���б���
	GUICtrlCreateListViewItem($DesktopWidth1 & "|" & $DesktopHeight1 & "|" & $DesktopDepth1 & "|" & $DesktopRefresh1,$ListView2)
EndFunc
;����ָ����ڷֱ���ǰ�ĺ���
Func huifu()
	_ChangeScreenRes($DesktopWidth,$DesktopHeight,$DesktopDepth,$DesktopRefresh)
	xianshi();ֻ��Ϊ�˴ﵽ��ʾ�б��Ŀ�ģ�Ӧ��������ȼ�����
EndFunc
;$DesktopWidth  , $DesktopHeight  , $DesktopDepth  , $DesktopRefresh ����ǰ��ȡ�ķֱ���
;$DesktopWidth1  , $DesktopHeight1  , $DesktopDepth1  , $DesktopRefresh1 ���к��ȡ�ķֱ���