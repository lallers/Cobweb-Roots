%---------- Cob Web Plots -----------%
g=@(x) 1-sin(x); 
x0 = .25; 
a = 0;
b = 1;
kmax = 200;
[spiderman1] = cobweb(g,a,b,x0,kmax);

saveas(gcf,'Cobweb_a.png')

%(2)
g=@(x) 1-x.^2; 
x0 = .5; 
a = 0;
b = 1;
kmax = 25;
[spiderman2] = cobweb(g,a,b,x0,kmax);


saveas(gcf,'Cobweb_b.png')

%/////////////////////////////////