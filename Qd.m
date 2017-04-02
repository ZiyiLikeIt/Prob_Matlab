function rtn = Qd(N,Q,P1,P2)
%% Random Create 
bOneResult = rand(1);
if (bOneResult < Q)
    bOneResult = 0;
else
    bOneResult = 1;
end
%% Channel
for N_iter=1:N
    nFactor = rand(1);
    if (nFactor < P1)
        rtn.result(N_iter,:) = [bOneResult 2];
    else if (nFactor < P1+P2)
        rtn.result(N_iter,:) = [bOneResult ~bOneResult];
        else
        rtn.result(N_iter,:) = [bOneResult bOneResult];
        end
    end
end
rtn.Sn = sum(rtn.result(:,2) == ~bOneResult);