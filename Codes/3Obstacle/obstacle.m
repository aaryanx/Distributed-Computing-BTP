function t=obstacle(r, e)
    c1=asin(sqrt(1-r^2))-sqrt(1-r^2)
    c2=pi-sqrt(1-r^2)-asin(sqrt(1-r^2))
    if(e<c1)
        t=a(e)
    else if(e>c1 && e<c2)
        phi=atan((sqrt(1-r^2))/r)
        y1=(e+2*sqrt(1-r^2)+r*(e-2*phi))/(1- r);
        t1=y1+2*sqrt(1-r^2)+r*(e+y1-2*phi);
        y2=(e+2*sqrt(1-r^2)+r*(2*pi-e-2*phi))/(1-r);
        t2=y2+2*sqrt(1-r^2)+r*(2*pi-e-y2-2*phi)
        if(t1<t2)
            t=t1
        else
            t=t2
        end
        
    else if(e>c2)
        t=a(e)
    else
        t=0      
        end
        end
    end
end