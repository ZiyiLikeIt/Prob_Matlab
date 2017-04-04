function rtn = Q5()
%%
M = 3e4;
%%
for M_iter = 1:M
    nExp(M_iter) = log(1/rand(1));
end
nX = .01:.01:10;
nCDF = 1 - exp(-nX);
%%
cdfplot(nExp);
hold on;
plot(nX,nCDF);
legend('Empirical CDF','Exact CDF','Location','southeast');