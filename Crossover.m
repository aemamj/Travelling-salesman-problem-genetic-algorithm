function [y1,y2]=Crossover(x1,x2)   

    % global TYPECROSOVER;
    
    n=numel(x1);    %طول کروموزوم
    
    Cutpoint=randi([1 n-1]); %محل قطع
    
    
    y1=[x1(1:Cutpoint) x2(Cutpoint+1:end)]; % فرزند اول
    
    y2=[x2(1:Cutpoint) x1(Cutpoint+1:end)];%فرزند دوم 
 
    
    R1=find(ismember(x2(Cutpoint+1:end),x1(1:Cutpoint)))+Cutpoint;
    R2=find(ismember(x1(Cutpoint+1:end),x2(1:Cutpoint)))+Cutpoint;
    
    for k=1:numel(R1)
        
        i=R1(k);
        j=R2(k);
        
        temp=y1(i);
        y1(i)=y2(j);
        y2(j)=temp;
        
    end

end