@Echo Off

Rem �w��̃t�H���_�̔z���ɍ������t�́uYYYYMMDD�v�t�H���_���쐬����



Rem ���[�U�ݒ�ϐ�

Rem �������t�̃t�H���_���쐬����e�t�H���_�̃p�X�B�u\�v�ŏI���邱��
Set BASE_DIR=C:\Test\



Rem ���ϐ���荡�����t���擾���uYYYYMMDD�v�̌`���Ńt�H���_�����쐬����
Set TODAY_DIR=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%

Rem �e�t�H���_�Ɉړ�����
Pushd %BASE_DIR%

Rem �������t���܂ރt�H���_�����ɍ���Ă��Ȃ����m�F����
Dir /a:d /b %TODAY_DIR%* > Nul 2>&1

Rem �Ȃ������Ȃ�t�H���_���쐬���G�N�X�v���[���ŊJ���ďI���
If Not "%ERRORLEVEL%" == "0" (
  Md %TODAY_DIR%
  Start "" "%BASE_DIR%%TODAY_DIR%"
  Exit /b
)

Rem ���ɍ������t���܂ރt�H���_�����肻���Ȃ炻����J��
Rem (�������݂���ꍇ�͖��O���ōŌ�ɓo�ꂷ��t�H���_���J��)
For /f "delims=" %%a In ('Dir /a:d /b %TODAY_DIR%*') Do Set DIR_NAME=%%a
Start "" "%BASE_DIR%%DIR_NAME%"
Exit /b



Rem �E��Ɍ���ƃV�X�e���J���Ɋւ��� - �J������ SVN ���|�W�g���̃f�B���N�g����ɃR�~�b�g���Ă��������o�b�`�t�@�C�� : http://language-and-engineering.hatenablog.jp/entry/20101109/p1
Rem �E����̃t�H���_�z���ɍ������t�̃t�H���_���쐬���� Windows �o�b�` : http://neos21.hatenablog.com/entry/2016/01/23/160433
Rem �E�ӊO�ɒm��Ȃ� Start �R�}���h�̎g���� : http://orangeclover.hatenablog.com/entry/20090814/1250261637