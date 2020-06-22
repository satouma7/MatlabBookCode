M=ceil(rand*3);%1=グー 2=チョキ 3=パー
if M==1
    Janken='グー';
elseif M==2
    Janken='チョキ'; 
else
    Janken='パー';
end
disp(Janken);