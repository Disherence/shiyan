clear
clc
close all

a=[3 -4 2];
b=[1 2];
n=0:20;
subplot(2,2,1);
impz(b,a,20);  %��ɢʱ��ϵͳ�����Ӧ
title('�����Ӧ');
subplot(2,2,2);
zplane(b,a);   %��ɢʱ��ϵͳ�㼫��ͼ
title('�㼫��ͼ');
subplot(2,2,3);
stepz(b,a,20); %��ɢʱ��ϵͳ��Ծ��Ӧ
title('��Ծ��Ӧ');