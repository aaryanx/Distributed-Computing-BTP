function p=varyb
    p = figure('Position', [0, 0, 640, 480]); 
    for c=[1.5, 2.62359, 3] 
        j=1;
        for i=0:0.1:pi
            x(j)=i;
            tb=b(i, c, 0);
            y2(j)=tb;
            j=j+1;
        end
        plot(x, y2)
        hold on;
    end
    hold off;
    title('Varying chi in algorithm A')
    xlabel('Distance of exit(x-f(x) or y)')
    ylabel('Time take for evacuation')
    legend('chi1', 'chi2', 'chi3')
    grid on;
    
    saveas(p, 'varyb', 'pdf');
end