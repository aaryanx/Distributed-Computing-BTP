function p=varyclambda
    p = figure('Position', [0, 0, 640, 480]);

    for k=[0.0001, 0.05762, 0.7]
        j=1;
        for i=0:0.1:pi
            x(j)=i;
            tc=c(i, 2.631865, 0.44916, k);
            y3(j)=tc;
            j=j+1;
        end
        plot(x, y3)
        hold on;
    end
    title('Varying lambda in algorithm C')
    xlabel('Distance of exit(x-f(x) or y)')
    ylabel('Time take for evacuation')
    legend('lambda1', 'lambda2', 'lambda3')
    grid on;
    
    saveas(p, 'varyclambda', 'pdf');
end