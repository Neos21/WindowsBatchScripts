@Echo Off

Rem �w��̃t�H���_�̔z���ɍ������t�́uYYYYMMDD�v�t�H���_���쐬����



Rem ���[�U�ݒ�ϐ�

Rem �������t�̃t�H���_���쐬����e�t�H���_�̃p�X�B�u\�v�ŏI���邱��
Set BASE_DIR=C:\Test\



Rem ���ϐ���荡�����t���擾���uYYYYMMDD�v�̌`�����쐬����
Set TODAY=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%

Rem �t�H���_�̃t���p�X������Ă���
Set TODAY_DIR=%BASE_DIR%%TODAY%

Rem �t�H���_���쐬����
Mkdir %TODAY_DIR%

Rem ������t�H���_���G�N�X�v���[���ŊJ��
Start Explorer "%TODAY_DIR%

Exit /b



Rem �E��Ɍ���ƃV�X�e���J���Ɋւ��� - �J������ SVN ���|�W�g���̃f�B���N�g����ɃR�~�b�g���Ă��������o�b�`�t�@�C�� : http://language-and-engineering.hatenablog.jp/entry/20101109/p1
Rem �E����̃t�H���_�z���ɍ������t�̃t�H���_���쐬���� Windows �o�b�` : http://neos21.hatenablog.com/entry/2016/01/23/160433