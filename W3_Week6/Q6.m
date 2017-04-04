function rtn = Q6(varargin)
%%
M = 3e4;
%%
rtn = Q6_iter(M);
%% Qa
if nargin ==0
    scatter(rtn(1:1e3,2),rtn(1:1e3,3),'.');
end
%% Qb
disp(['  i. P(x1 is decoded correctly) = ',num2str(sum((rtn(:,2)+1) > 0) / M)]);
disp([' ii. P(x2 is decoded correctly) = ',num2str(sum((rtn(:,3)+1) > 0) / M)]);
disp(['iii. P(x1 and x2 are decoded correctly) = ',num2str(sum(((rtn(:,2)+1) > 0) .* ((rtn(:,3)+1) > 0)) / M)]);
disp([' iv. P(R > 1) = ',num2str(sum(rtn(:,1) > 1) / M)]);
disp(['  v. P(x2 is decoded correctly && R > 1) = ',num2str(sum(((rtn(:,3)+1) > 0) .* (rtn(:,1) > 1)) / M)]);