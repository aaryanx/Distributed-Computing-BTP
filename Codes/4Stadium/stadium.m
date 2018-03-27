function t=stadium(n, e, v)
            r=0.5;
            i=2*pi/n;
            c1=1;
            while e>c1*i
                c1=c1+1;
            end
            x1=(c1+1)*i;
            x2=(1-r)/v;
            p1=2*pi*r*(c1+1)/n;
	
			c2=1;
			p2=(n-c2)*i*r;
			x3=p2-p1;
			x=x1+2*x2+x3;
            
            while x>c2*i && c2<n
                c2=c2+1;
                p2=(n-c2)*i*r;
				x3=p2-p1;
				x=x1+2*x2+x3;
            end
            x4=c2*i-x;
			x=x+2*x2+x3+x4+x1-e;
			y=pi+(pi-e);
			if(x<y)
                
                t=x
            else
                
                t=y
            end
            
end