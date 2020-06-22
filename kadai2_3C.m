A=rand(3,4);
S1=0;S2=0;
for I=1:3
    for J=1:4
        S1=S1+A(I,J);
        S2=S2+A(I,J)^2;
    end
end
S1
S2

        