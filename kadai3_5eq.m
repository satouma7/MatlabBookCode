function dL=kadai3_5eq(T,L) %�֐���'kadai3_5eq'���t�@�C�����ƈ�v������
    global a b c d      %a, b, c, d���O���[�o���ϐ��Ɛ錾
    dL=zeros(2,1);
    dL(1)=a*L(1)      -b*L(1)*L(2)  ;
    dL(2)=c*L(1)*L(2)-d*L(2)        ;
end