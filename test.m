clear;
clc;
close all;
% 这部分是灰度图像处理和直方图统计部分
% img=imread('Fig0417(a)(barbara).tif');
% subplot(1,2,1);
% imshow(img);
% subplot(1,2,2);
% imhist(img);
% figure(2);
% img2=histeq(img,256);
% subplot(1,2,1);
% imshow(img2);
% subplot(1,2,2);
% imhist(img2);

% 直方图规定化处理
% orgin=imread('Fig0638(a)(lenna_RGB).tif');
% orgin=rgb2gray(orgin);             %读入原图像
% [m_o,n_o]=size(orgin);
% orgin_hist=imhist(orgin)/(m_o*n_o);
%  
% standard = imread('Fig0417(a)(barbara).tif');% 读入标准图
% % standard=rgb2gray(standard);  
% [m_s,n_s]=size(standard);
% standard_hist=imhist(standard)/(m_s*n_s);
%  
% startdard_value=[];                         % 标准图累积直方
% orgin_value=[];                             % 原图像累积直方
%  
% for i=1:256
%    startdard_value=[startdard_value sum(standard_hist(1:i))]; 
%    orgin_value=[orgin_value sum(orgin_hist(1:i))];     
% end
%  
%  
% for i=1:256
%     value{i}=startdard_value-orgin_value(i);
%     value{i}=abs(value{i});
%     [temp index(i)]=min(value{i});
% end
% newimg=zeros(m_o,n_o);
% for i=1:m_o
%     for j=1:n_o
%         newimg(i,j)=index(orgin(i,j)+1)-1;
%     end
% end
% newimg=uint8(newimg);
%  
% subplot(2,3,1);imshow(orgin);title('原图');
% subplot(2,3,2);imshow(standard);title('标准图');
% subplot(2,3,3);imshow(newimg);title('myself匹配到标准图');
% subplot(2,3,4);imhist(orgin);
% title('原图');
% subplot(2,3,5);imhist(standard);
% title('标准图');
% subplot(2,3,6);imhist(newimg);
% title('myself匹配到标准图');


%直接三通道互相独立处理部分
% img=imread('Fig0638(a)(lenna_RGB).tif');
% [m,n,channel]=size(img);
% R1=img(:,:,1);  %红色分量
% G1=img(:,:,2);  %绿色分量
% B1=img(:,:,3);  %蓝色分量
% R2=histeq(R1);
% G2=histeq(G1);
% B2=histeq(B1);
% newimg=cat(3,R2,G2,B2);
% figure;
% subplot(2,1,1)
% imshow(img);title('原始图像');
% subplot(2,1,2)
% imshow(newimg);title('均衡化后的图像');

%这部分是hsi处理图像部分
% img=imread('Fig0638(a)(lenna_RGB).tif');
% subplot(2,1,1)
% imshow(img);
% title('原始图像')
% img_hsi=rgb2hsi(img);
% i=img_hsi(:,:,3);
% i_new=histeq(i,256);
% img_hsi_new=cat(3,img_hsi(:,:,1),img_hsi(:,:,2),i_new);
% img_new=hsi2rgb(img_hsi_new);
% subplot(2,1,2);
% imshow(img_new);
% title('i分量均衡法')

% hsv部分
% img=imread('Fig0638(a)(lenna_RGB).tif');
% subplot(2,1,1)
% imshow(img);
% title('原始图像')
% img_hsv=rgb2hsv(img);
% i=img_hsv(:,:,3);
% i_new=histeq(i,256);
% img_hsv_new=cat(3,img_hsv(:,:,1),img_hsv(:,:,2),i_new);
% img_new=hsv2rgb(img_hsv_new);
% subplot(2,1,2);
% imshow(img_new);
% title('v分量均衡法')


