clear all;
clc;

data_A = zeros(1,7681);
dataAA = importdata('s1_1.txt');
data_A = dataAA(1,:);
data=importdata('s1_1_1.txt');
Max = importdata('Max.txt');
dataline = 21;
datarow = 512;
DBN_N = 9;
filer = 8; 

for i = 1:DBN_N
   
    refUpdata = zeros(datarow,2 * dataline + 1);
    refUpLen = 2 * dataline + 1;
    if (i == 1)
        refUpdata = refUpsam(refUpdata,data,dataline,datarow);
    else
         refUpdata = refUpsam(refUpdata,refSignaldata,dataline,datarow);
    end
    refExLen = 2 * dataline + 2 * filer - 1;
    refExdata = zeros(datarow,refExLen);
    refExdata = refEx(refExdata,refUpdata,refUpLen,datarow,filer);
    datarow = datarow / 2;
    refCONLen = 2 * dataline + filer;
    refCONdata = zeros(datarow,refCONLen);
    refCONdata = refCON(refCONdata,refExdata,Max,refCONLen,datarow,filer);
    refSignalLen = 2 * dataline - filer + 2;
    refSignaldata = zeros(datarow,refSignalLen);
    refSignaldata = refSignalC(refSignaldata,refCONdata,refSignalLen,filer,datarow);
    dataline = refSignalLen;
end
picture(data_A,refSignaldata);
save('refSignaldata.txt','refSignaldata','-ascii','-double');
