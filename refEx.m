function refExdata = refEx(refExdata,refUpdata,refUpLen,row,filer)

for i = 1:row
    for j = 1:(filer - 1)
        refExdata(i,j) = refUpdata(i,filer - j);
        refExdata(i,filer + refUpLen - 1 + j) = refUpdata(i,refUpLen + 1 -j);
    end
    
    for j = 1:refUpLen
        refExdata(i,filer - 1 + j) = refUpdata(i,j); 
    end
end
end