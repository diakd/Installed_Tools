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
#Region ### START Koda GUI section ### Form=D:\我的文档\桌面\装机工具V4.1\装机工具V3.0.kxf
$Form1_1 = GUICreate("Form1", 586, 507, 184, 141)
$Tab1 = GUICtrlCreateTab(16, 40, 553, 441)
GUICtrlSetFont(-1, 9, 400, 0, "Arial")
$TabSheet1 = GUICtrlCreateTabItem("TabSheet1")
$ListView1 = GUICtrlCreateListView("", 32, 175, 513, 249)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label = GUICtrlCreateLabel("Label", 160, 112, 84, 37)
GUICtrlSetFont(-1, 24, 400, 0, "黑体")
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
$ListView2 = GUICtrlCreateListView("屏幕宽度|屏幕高度|桌面颜色深度|屏幕刷新率", 180, 88, 370, 50)
GUICtrlCreateListViewItem($DesktopWidth & "|" & $DesktopHeight & "|" & $DesktopDepth & "|" & $DesktopRefresh,$ListView2)
$Label1 = GUICtrlCreateLabel("当前分辨率：", 72, 100, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "黑体")
$Button40 = GUICtrlCreateButton("设  定", 144, 440, 121, 33)
$Button41 = GUICtrlCreateButton("恢  复", 328, 440, 121, 33)
HotKeySet("^r","huifu")
$Label2 = GUICtrlCreateLabel("设置分辨率：", 72, 153, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "黑体")
$Combo1 = GUICtrlCreateCombo("",180, 150, 370, 25,$CBS_DROPDOWNLIST)
GUICtrlSetData($Combo1,$Fb[1][0]&"|"&$Fb[2][0]&"|"&$Fb[3][0]&"|"&$Fb[4][0]&"|"&$Fb[5][0]&"|"&$Fb[6][0]&"|"&$Fb[7][0]&"|"&$Fb[8][0]&"|"&$Fb[9][0]&"|"&$Fb[10][0]&"|"&$Fb[11][0]&"|"&$Fb[12][0]&"|"&$Fb[13][0]&"|"&$Fb[14][0]&"|"&$Fb[15][0]&"|"&$Fb[16][0]&"|"&$Fb[17][0]&"|"&$Fb[18][0]&"|"&$Fb[19][0]&"|"&$Fb[20][0]&"|"&$Fb[21][0])
$Label3 = GUICtrlCreateLabel("说明:如果不小心点错，导致电脑黑屏，无法点恢复按扭，请直接按Ctrl+R键       恢复调节前设置                                                    1、（CRT）显示器17寸普屏（4：3），最佳分辨率为1024X768。            2、（LCD）17寸和19寸普屏（5：4），最佳分辨率是1280×1024。          3、（LCD）19寸宽屏（16：10），最佳分辨率是1440×900。              4、（LCD）22寸宽屏（16：10），最佳分辨率是1680×1050。             5、1280×800，这是13.3吋、14.1吋笔记本屏幕常用的分辨率             6、1366×768、1920×1080、1600×900等是16:9宽屏的分辨率。          7、1024×600，是9寸10寸上网本的分辨率。                            8、1920×1200，是24寸宽屏（16：10）液晶的分辨率。                  9、2560x1440，苹果27寸专用。                                      10、2560x1600，30寸液晶专用。", 32, 230, 516, 257)
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetFont(-1, 11.5, 400, 0, "黑体")
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
;定义列表框随调节显示函数
Func xianshi()
	Global $DesktopWidth1 = @DesktopWidth , $DesktopHeight1 = @DesktopHeight , $DesktopDepth1 = @DesktopDepth , $DesktopRefresh1 = @DesktopRefresh 
	_GUICtrlListView_DeleteAllItems($ListView2);刷新列表功能
	GUICtrlCreateListViewItem($DesktopWidth1 & "|" & $DesktopHeight1 & "|" & $DesktopDepth1 & "|" & $DesktopRefresh1,$ListView2)
EndFunc
;定义恢复调节分辨率前的函数
Func huifu()
	_ChangeScreenRes($DesktopWidth,$DesktopHeight,$DesktopDepth,$DesktopRefresh)
	xianshi();只是为了达到显示列表的目的，应和上面的热键功能
EndFunc
;$DesktopWidth  , $DesktopHeight  , $DesktopDepth  , $DesktopRefresh 运行前读取的分辨率
;$DesktopWidth1  , $DesktopHeight1  , $DesktopDepth1  , $DesktopRefresh1 运行后读取的分辨率