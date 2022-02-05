        
    m=numel(CResult);
    
    CResult=[CResult CResult(1)];
    
    for i =1:m
        
        Length = Length+MatrixDistance(CResult(i),CResult(i+1));        
       
        
    end
    

    CResult=[CResult CResult]
    
    for i =1:numel(CResult)-1
        
        Length = Length+MatrixDistance(CResult(i),CResult(i+1));        
       
        
    end