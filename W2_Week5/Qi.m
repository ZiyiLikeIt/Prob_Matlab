function rtn = Qi
%%
Q = .5;
P1 = 0;
P2 = 0:.05:.45;
N = 5;
M = 1e4;
%%
for P2_iter = P2
    for M_iter = 1:M
        temp = Qd(N,Q,P1,P2_iter);
        Sn(M_iter) = temp.Sn;
    end
    rtn(find(P2 == P2_iter)) = sum(Sn > N/2);
end
%%
Qh;
hold on;
plot(P2,rtn/M);
grid on;
legend('n = 101','n = 5','Location','northwest');