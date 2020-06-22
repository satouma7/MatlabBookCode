function dL=kadai3_5eq(T,L)
    global a b c d
    dL=zeros(2,1);
    dL(1)=a*L(1)      -b*L(1)*L(2)  ;
    dL(2)=c*L(1)*L(2)-d*L(2)        ;
end