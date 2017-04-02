function rtn = Qe
%%
Q = .5;
P1 = 0;
P2 = .05;
N = 101;
M = 1e4;
%%
for M_iter = 1:M
    temp = Qd(N,Q,P1,P2);
    Sn(M_iter) = temp.Sn;
end
for N_iter = 0:N
    rtn(N_iter+1) = sum(Sn == N_iter) / M;
end
%%
Qd2;
hold on;
plot(0:N,rtn,'X-');
grid on;
legend('Exact pmf','Poisson approximate pmf','Empirical pmf');