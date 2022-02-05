function y=Mutate(x)
    global TYPECROSOVER;
    METHOD = randi([1 3]);
    
    switch METHOD
        
        case 1
                y=DoingSwap(x);
                TYPECROSOVER = 'Swap';
        case 2
                y=DoingReversion(x);
                TYPECROSOVER = 'Reversion';
            
        case 3
                 y=DoingInsertion(x);
                TYPECROSOVER = 'Insertion';
            
    end
    
end


function y=DoingSwap(x)

    n = numel(x);      % تعداد متغییر ها
    i = randsample(n,2);
    y=x;
    y([i(1) i(2)])= y([i(2) i(1)]);  % عوض شدن
    
end


function y=DoingReversion(x)
    
    n = numel(x);      % تعداد متغییر ها
    i = randsample(n,2);
    i1=min(i);
    i2=max(i);
    
    y=x;
    y(i1:i2)=x(i2:-1:i1);
end

function y=DoingInsertion(x)
        n = numel(x);      % تعداد متغییر ها
    i = randsample(n,2);
    i1=i(1);
    i2=i(2);
    
    
    if i1<i2
                
        y=x([1:i1-1 i1+1:i2 i1 i2+1:end]);
        
    else
        
        y=x([1:i2  i1 i2+1:i1-1  i1+1:end]);
        
    end





end