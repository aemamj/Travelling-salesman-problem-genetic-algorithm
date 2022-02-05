function GenR
    clear;
    i=0;
    l=99999999999;
    while(i<1000)
        clc;
        Citys = TspCitys();
        CResult = TspRslt(Citys);
        Length = TspLengthCitys(CResult , Citys );
        if Length < l && Length ~= 0
            l = Length;
        end
        i = i + 1;
        disp(i);
    
    end
    disp(['Distance is : ' num2str(l)]);
end