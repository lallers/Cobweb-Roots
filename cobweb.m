function spiderman = cobweb(g,a,b,x0,kmax)
tic
k = 0;
line =@(x) x;

x = x0;
y = g(x0);

figure
hold on
xlabel('x');ylabel('y');
fplot(g,a:b,'b')
fplot(line,a:b,'r')
plot([x0 x0],[0,y],'k')
legend(func2str(g),func2str(line))
spiderman = cobwebsr(g,a,b,x,y,k,kmax);
    function plotc = cobwebsr(g,a,b,x,y,k,kmax)
        k = k + 1;
        %fprintf('Iteration ... %g.\n',k)
        if k >= kmax
            t = toc;
            plotc = '';
            fprintf('Max iterations met (%.03fs).\n',t)
            return
        elseif mod(k,2) == 0
            y = g(x);
            x2 = line(y);
            plot([x x2],[y y],'k');
            plotc = cobwebsr(g,a,b,x2,y,k,kmax);
        else
            y2 = g(x);
            plot([x x],[y y2],'k')
            plotc = cobwebsr(g,a,b,x,y2,k,kmax);
        end
    end

title('Cobweb Plot')
end
