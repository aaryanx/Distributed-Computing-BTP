function p=compare
    j=1;
    for i=0:0.1:pi
        x(j)=i;
        ta=a(i);
        tb=b(i, 2.62359, 0);
        tc=c(i, 2.631865, 0.44916, 0.05762);
        y1(j)=ta;
        y2(j)=tb;
        y3(j)=tc;
        j=j+1;
    end
    p = figure('Position', [0, 0, 640, 480]);
    plot(x, y1)
    hold on;
    plot(x, y2)
    hold on;
    plot(x, y3)
    title('Comparision of the algorithms')
    xlabel('Distance of exit(x-f(x) or y)')
    ylabel('Time take for evacuation')
    legend('A', 'B', 'C')
    grid on;
    
    saveas(p, 'plotcompare', 'pdf');
end