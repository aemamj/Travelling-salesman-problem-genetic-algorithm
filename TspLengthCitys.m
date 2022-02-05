function Length = TspLengthCitys(CResult , Citys )
        
    %Citys = TspCitys();
    %CResult = TspRslt();
    MatrixDistance = Citys.MatrixDistance ;
    
    Length = 0 ; 
    % DisctanceLent = [CResult CResult(1)]
    
    
    

    %CResult=[CResult CResult] ;
    
    for i =1:numel(CResult)-2
        
        Length = Length+MatrixDistance(CResult(i),CResult(i+1));        
       
        
    end
    
    


end