function rtn = Qf
%%
Q =.5;
P1 = 0;
P2 = .05:.05:.8;
N = 101;
M = [2,5,10,100,1000,10000];
%%
for M_iter = M   
    for P2_iter = P2
        for i = 1:M_iter
            temp = Qd(N,Q,P1,P2_iter);
            Sn(i) = temp.Sn;
        end
        rtn(find(P2 == P2_iter),find(M == M_iter)) = mean(Sn);
    end
end
%%
plot(P2,rtn);
grid on;
for M_iter = M
    sLegend(find(M == M_iter),:) = ['M = ' num2str(M_iter,'%05d')];    
end
legend(sLegend,'Location','northwest');