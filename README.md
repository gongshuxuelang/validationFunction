# validationFunction
用来验证cpp分解的数据是否正确,如果分解的没问题,那全部重构以后数据回和源数据对上
一共有6个函数,main.m是主函数,用来调用其他函数,需要执行main函数,
picture.m函数是画图函数,用来画出图像来对比数据.
refEx.m是延拓函数,
refUpsam.m是上采样函数.
refSignalC.m是提取数据函数
refCON.m是卷积函数
Max.m是提取低通滤波器和高通滤波器的函数
s1_1_1.txt是分解数据,就是需要把分解数据重构以后和源数据做对比
s1_1.txt是源数据,只需要提取源数据第一行和重构数据做对比即可
data.png是生成的图片.
refSignaldata.txt是重构好的数据,