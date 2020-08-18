T=0:1/100:10*pi; 
R=5.5-rand(1,3142);         %R‚É—v‘f”3142C4.5‚©‚ç5.5‚Ì”ÍˆÍ‚Ì—”—ñ‚ğ‘ã“ü
X=R.*cos(T); Y=R.*sin(T);   %X‚ÉR cosTCY‚ÉR sinT‚ğ‘ã“ü
figure; plot(X,Y);
figure; plot3(X,Y,T);
