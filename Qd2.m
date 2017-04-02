function rtn = Qd2
%%
N = 101;
P2 = .05;
k = 0:N;
%%
for N_iter = 0:N
    nBC(N_iter+1) = nchoosek(N,N_iter);
end
rtn(:,1) = (nBC).*((P2 .^ k).*((1-P2) .^ (repmat(N,1,N+1)-k)));
%%
% rtn(:,2) = ((N*P2)*exp(-(N*P2))) ./ factorial(k);
rtn(:,2) = ((N*P2) .^ k) * exp(-(N*P2)) ./ factorial(k);
%%
plot(k,rtn,'X-');
grid on;
legend('Exact pmf','Poisson approximate pmf');