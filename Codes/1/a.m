function ta=a(e)
    syms x z;
    eqn1=x-z==e;
    eqn2=z==2*sin(x-z/2);
    sol=solve([eqn1, eqn2], [x, z]);
    xSol = sol.x;
    zSol = sol.z;
    ta=1+xSol+zSol;
end