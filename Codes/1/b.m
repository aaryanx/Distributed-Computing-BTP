function tb=b(e, chi, phi)
    syms x z y h q p real;
    assumeAlso(h>0)

    
    eqn1=x-z==e;
    eqn2=z==2*sin(x-z/2);
    sol=solve([eqn1, eqn2], [x, z]);
    xSol = sol.x;
    zSol = sol.z;
    
    y=e;
    
    h=(2+(chi-y)^2-2*cos(chi+y)+2*(chi-y)*(sin(phi+chi)-sin(phi-chi)))/(2*(chi-y-sin(phi-chi)+sin(phi+y)));
    q=y+h-chi;
    
    eqn3=p==2*sin(chi+p/2);
    sol2=solve(eqn3, p);
    pSol = sol2;
    
    if(e<chi && e+zSol<=chi)
        f1=1+xSol+zSol;
        tb=f1;
    else if(e<=chi && e+zSol>chi)
        f2=1+e+2*h;
        tb=f2;
    else
        f3=1+chi+2*sin(chi)/cos(phi)+2*pSol;
        tb=f3;
    end
end