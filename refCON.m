function refCONdata = refCON(refCONdata,refExdata,Max,refCONLen,row,filer)

temp = 0.0;
for i = 1:row
    for j = 1:refCONLen
        for k = 1:filer
            temp = temp + refExdata(2*(i-1)+1,j-1+k)*Max(1,k)+refExdata(2*i,j-1+k)*Max(2,k);
        end       
        refCONdata(i,j) = temp;
        temp = 0;
    end    
end
end