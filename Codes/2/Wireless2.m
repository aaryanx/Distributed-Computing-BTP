function h=Wireless2(x, L)
    if(x<=L/2)
        t=L/2-x
    else
        t=min(3*x, 1-x)+L/2
    end
end