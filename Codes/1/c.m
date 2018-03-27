function tc=c(e, chi, phi, lambda)
    syms x z y h q p h2 q2 sq real;
    assumeAlso(h>0)
    assumeAlso(sq>0)
    assumeAlso(h2>0)

    eqn1=x-z==e;
    eqn2=z==2*sin(x-z/2);
    sol=solve([eqn1, eqn2], [x, z]);
    xSol = sol.x;
    zSol = sol.z;
    
    y=e;
    
    h=(2+(chi-y)^2-2*cos(chi+y)+2*(chi-y)*(sin(phi+chi)-sin(phi-chi)))/(2*(chi-y-sin(phi-chi)+sin(phi+y)));
    q=y+h-chi;
    
    N=2+(lambda)^2+(lambda+chi-y)^2+2*lambda*(sin(phi-chi)-sin(phi+y))+2*(lambda+chi-y)*(sin(chi)+sin(y)-lambda*cos(phi))-2*cos(phi+chi);
    D=2*(lambda+chi-y+sin(chi)+sin(y)-lambda*cos(phi));
    h2=N/D;
    q2=y+h-chi-lambda;
    
    eqn3=p==2*sin(chi+p/2);
    sol2=solve(eqn3, p);
    pSol = sol2;
    
    if(e<chi && e+zSol<=chi)
            f1=1+xSol+zSol;
            tc=f1;
        else if(e<=chi && e+zSol>chi)
            f2=1+e+2*h;
            tc=f2;
        else if(e<chi && e+zSol>chi && e+zSol>chi+lambda)
            f3=1+e+2*h2;
            tc=f3;
        else        
            sq=sqrt(sin(chi)^2+(lambda*sin(phi))^2);
            f4=1+chi+lambda+sin(chi)-lambda*cos(phi)+sq+2*pSol;
            tc=f4;
    end
    end
end