function rtn = Q6_iter(M)
%%
nExp = log(1./rand(M,1));
nTheta = rand(M,1) .* 2*pi;
rtn(:,1) = nExp.^.5;
rtn(:,2:3) = [rtn(:,1).*cos(nTheta),rtn(:,1).*sin(nTheta)];