function p=plotobstacle

    p = figure('Position', [0, 0, 640, 480]);   

    for r=0.2:0.1:0.9
        j=1;   
        for i=0.1:0.01:pi
            x(j)=i;
            tc=obstacle(r, i);
            y(j)=tc;
            j=j+1;
        end
        plot(x, y)
        set(gca,'xtick',[0:0.1:pi])
        set(gca,'XTickLabelRotation',90)
        
        hold on;
    end
    title('Obstacle Problem')
    xlabel('Distance of exit')
    ylabel('Time taken for evacuation')
    legend('r=0.1, 0.2, 0.3,..., 0.9')
    grid on;
    
    saveas(p, 'obstacle', 'pdf');
end