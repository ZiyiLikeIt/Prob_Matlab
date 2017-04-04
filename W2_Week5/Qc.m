function rtn = Qc(Q,P1,P2)
%% Random Create
bOneResult = rand(1);
if (bOneResult < Q)
    bOneResult = 0;
else
    bOneResult = 1;
end
%% Channel
nFactor = rand(1);
if (nFactor < P1)
    rtn = [bOneResult 2];
else if (nFactor < P1+P2)
    rtn = [bOneResult ~bOneResult];
    else
    rtn = [bOneResult bOneResult];
    end
end
