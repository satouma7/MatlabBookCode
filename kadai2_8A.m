M=ceil(rand*3);         %M��1����R�̃����_���Ȑ�������
if M==1                 %����M��1�̏ꍇ�C
    Janken='�O�[';       % Janken��'�O�['����
elseif M==2             %�����ł͂Ȃ�����M��2�̏ꍇ�C
    Janken='�`���L';     % Janken��'�`���L'����
else                    %����ȊO�̏ꍇ�C
    Janken='�p�[';       % Janken��'�p�['����
end                     %2�s�ڂ����if���͂����܂�
disp(Janken);           %Janken�̓��e��\��