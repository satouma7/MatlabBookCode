function dL=kadai3_6eq(T,L) %関数名'kadai3_5eq'をファイル名と一致させる
    global a b c d      %a, b, c, dをグローバル変数と宣言
    dL=zeros(2,1);
    dL(1)=a*L(1)      -b*L(1)*L(2)  ;
    dL(2)=c*L(1)*L(2)-d*L(2)        ;
end
