function p=varycphi
    p = figure('Position', [0, 0, 640, 480]);   

    for k=[0.2, 0.44916, 0.6]
     j=1;   
        for i=0:0.1:pi
            x(j)=i;
            tc=c(i, 2.631865, k, 0.05762);
            y3(j)=tc;
            j=j+1;
        end
        plot(x, y3)
        hold on;
    end
    title('Varying phi in algorithm C')
    xlabel('Distance of exit(x-f(x) or y)')
    ylabel('Time take for evacuation')
    legend('phi1', 'phi2', 'phi3')
    grid on;
    
    saveas(p, 'varycphi', 'pdf');
end