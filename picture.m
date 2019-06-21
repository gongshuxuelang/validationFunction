function picture(data_A,refSignaldata)
figure(1);%创建独立的窗口
grid on;  %添加格栅
%坐标说明
title('数据对比图');
xlabel('时间1/128s');
ylabel('信号幅值');
x1 = 1:7681;
x2 = 1:7686;
str1 = 'g';
str2 = 'r';
plot(x2,refSignaldata,str2);
hold on;
plot(x1,data_A,str1);
hold on;

end