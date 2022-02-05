function PlotSolution(CResult,Citys)

    x=Citys.X;
    y=Citys.Y;
    %CResult=[CResult CResult(1)];
    
    plot(x(CResult),y(CResult),'-o','MarkerSize',6);
    
end