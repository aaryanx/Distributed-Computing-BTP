function p=plotstadium

    p = figure('Position', [0, 0, 640, 480]);   
    n=100;
    for v=1:4:9
        j=1;   
        for i=0.1:0.05:pi
            x(j)=i;
            tc=stadium(n, i, v);
            y(j)=tc;
            j=j+1;
        end
        plot(x, y)
        set(gca,'xtick',[0:0.1:pi])
        set(gca,'XTickLabelRotation',90)
        set(gca,'ytick',[0:0.1:7])
        hold on;
    end
    title('Stadium Problem n=100')
    xlabel('Distance of exit')
    ylabel('Time take for evacuation')
    legend('v=1', 'v=5', 'v=9')
    grid on;
    
    saveas(p, 'stadiumv', 'pdf');
end