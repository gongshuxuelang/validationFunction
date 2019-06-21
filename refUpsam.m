function refUpdata = refUpsam(refUpdata,refSignal,refSignalLen,row)
clc;

for i = 1:row
    for j = 1: refSignalLen
        refUpdata(i,2 * j) = refSignal(i,j);
        refUpdata(i,2 * j + 1) = 0;
    end
end
end