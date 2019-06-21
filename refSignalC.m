function refSignaldata = refSignalC(refSignaldata,refCONdata,refSignalLen,filer,row)

for i = 1:row
   for j = 1:refSignalLen
       refSignaldata(i,j) = refCONdata(i,filer-1+j);
   end
end
end