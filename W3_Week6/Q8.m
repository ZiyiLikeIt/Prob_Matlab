function rtn = Q8()
disp('Empirical value:');
Q6(0);
disp('Theoretically derived value:');
disp(['  i. P(x1 is decoded correctly) = ',num2str(1-normcdf(-1,0,.5^.5))]);
disp([' ii. P(x2 is decoded correctly) = ',num2str(1-normcdf(-1,0,.5^.5))]);
disp(['iii. P(x1 and x2 are decoded correctly) = ',num2str((1-normcdf(-1,0,.5^.5)) * (1-normcdf(-1,0,.5^.5)))]);
disp([' iv. P(R > 1) = ',num2str(1-expcdf(1,1))]);
disp(['  v. P(x2 is decoded correctly && R > 1) = ',num2str(sum(((rtn(:,3)+1) > 0) .* (rtn(:,1) > 1)) / M)]);
