function [ R ] = Hantei( A,B )
    switch A
        case 1%チーム１がグーのとき
            if B==2%チーム２がチョキのとき
                R=1;
            elseif B==3%チーム２がパーのとき
                R=2;
            else
                R=0;
            end
        case 2%チーム１がチョキのとき
            if B==1%チーム２がグーのとき
                R=2;
            elseif B==3%チーム２がパーのとき
                R=1;
            else
                R=0;
            end      
        case 3%チーム１がパーのとき
            if B==1%チーム２がグーのとき
                R=1;
            elseif B==2%チーム２がチョキのとき
                R=2;
            else
                R=0;
            end
    end
end