' �u���S�V�b�N Regular�v�u���S�V�b�N Light�v�̃t�H���g���u���S�V�b�N Medium�v�̃t�H���g�t�@�C���ɍ����ւ���
' Windows ���̟��S�V�b�N�𑾂߂ɂ���X�N���v�g
' 
' - �u���S�V�b�N Medium�v�̃t�H���g�t�@�C�����R�s�[���ėp�ӂ��ă��W�X�g�������������܂�
' - ���s��A��x�T�C���A�E�g���čēx�T�C���C������ƕύX�����f����܂�
' - �Ǘ��Ҍ������Ȃ��� WScript.Shell �� regWrite �֐��Łu���W�X�g�� �L�[ "�c" �̃��[�g�������ł��B�v�G���[���o��̂�
'   �Ǘ��Ҍ����ŊJ�����R�}���h�v�����v�g��� `cscript ForceYuGothicMedium.vbs` �Ǝ��s���Ă�������

' Object �̗p��
Dim shell : Set shell = WScript.CreateObject("WScript.Shell")
Dim fs    : Set fs    = WScript.CreateObject("Scripting.FileSystemObject")

' ���W�X�g���L�[�̐錾
Dim fontsKey           : fontsKey           = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts\"
Dim yuGothicRegularKey : yuGothicRegularKey = fontsKey & "Yu Gothic Regular & Yu Gothic UI Semilight (TrueType)"
Dim yuGothicLightKey   : yuGothicLightKey   = fontsKey & "Yu Gothic Light & Yu Gothic UI Light (TrueType)"

' �ύX�O�̃��W�X�g���l��ǂ�ł���
Dim yuGothicRegularValue : yuGothicRegularValue = shell.RegRead(yuGothicRegularKey)
Dim yuGothicLightValue   : yuGothicLightValue   = shell.RegRead(yuGothicLightKey)

WScript.Echo("�ύX�O�� YuGothic Regular �t�H���g�t�@�C���� : " & yuGothicRegularValue)
WScript.Echo("�ύX�O�� YuGothic Light �t�H���g�t�@�C����   : " & yuGothicLightValue)

' YuGothic Medium �t�H���g
Dim fontsPath          : fontsPath      = "C:\Windows\Fonts\"
Dim yuGothicMediumFile : yuGothicMedium = "YuGothM.ttc"
' �ȉ��̃t�@�C�����ŃR�s�[��z�u����
Dim yuGothicMediumForRegular : yuGothicMediumForRegular = "YuGothM2.ttc"
Dim yuGothicMediumForLight   : yuGothicMediumForLight   = "YuGothM3.ttc"

' �t�@�C���R�s�[���s
On Error Resume Next
Call fs.CopyFile(fontsPath & yuGothicMediumFile, fontsPath & yuGothicMediumForRegular)
Call fs.CopyFile(fontsPath & yuGothicMediumFile, fontsPath & yuGothicMediumForLight)
On Error GoTo 0
WScript.Echo(yuGothicMediumForRegular & " �t�@�C���̃R�s�[��������")
WScript.Echo(yuGothicMediumForLight   & " �t�@�C���̃R�s�[��������")

' ���W�X�g���l��ύX����
shell.RegWrite yuGothicRegularKey, yuGothicMediumForRegular, "REG_SZ"
shell.RegWrite yuGothicLightKey  , yuGothicMediumForLight  , "REG_SZ"
WScript.Echo("�t�@�C���R�s�[�E���W�X�g���ύX����")
