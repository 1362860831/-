clear;
clc;
close all;
% �ⲿ���ǻҶ�ͼ�����ֱ��ͼͳ�Ʋ���
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

% ֱ��ͼ�涨������
% orgin=imread('Fig0638(a)(lenna_RGB).tif');
% orgin=rgb2gray(orgin);             %����ԭͼ��
% [m_o,n_o]=size(orgin);
% orgin_hist=imhist(orgin)/(m_o*n_o);
%  
% standard = imread('Fig0417(a)(barbara).tif');% �����׼ͼ
% % standard=rgb2gray(standard);  
% [m_s,n_s]=size(standard);
% standard_hist=imhist(standard)/(m_s*n_s);
%  
% startdard_value=[];                         % ��׼ͼ�ۻ�ֱ��
% orgin_value=[];                             % ԭͼ���ۻ�ֱ��
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
% subplot(2,3,1);imshow(orgin);title('ԭͼ');
% subplot(2,3,2);imshow(standard);title('��׼ͼ');
% subplot(2,3,3);imshow(newimg);title('myselfƥ�䵽��׼ͼ');
% subplot(2,3,4);imhist(orgin);
% title('ԭͼ');
% subplot(2,3,5);imhist(standard);
% title('��׼ͼ');
% subplot(2,3,6);imhist(newimg);
% title('myselfƥ�䵽��׼ͼ');


%ֱ����ͨ���������������
% img=imread('Fig0638(a)(lenna_RGB).tif');
% [m,n,channel]=size(img);
% R1=img(:,:,1);  %��ɫ����
% G1=img(:,:,2);  %��ɫ����
% B1=img(:,:,3);  %��ɫ����
% R2=histeq(R1);
% G2=histeq(G1);
% B2=histeq(B1);
% newimg=cat(3,R2,G2,B2);
% figure;
% subplot(2,1,1)
% imshow(img);title('ԭʼͼ��');
% subplot(2,1,2)
% imshow(newimg);title('���⻯���ͼ��');

%�ⲿ����hsi����ͼ�񲿷�
% img=imread('Fig0638(a)(lenna_RGB).tif');
% subplot(2,1,1)
% imshow(img);
% title('ԭʼͼ��')
% img_hsi=rgb2hsi(img);
% i=img_hsi(:,:,3);
% i_new=histeq(i,256);
% img_hsi_new=cat(3,img_hsi(:,:,1),img_hsi(:,:,2),i_new);
% img_new=hsi2rgb(img_hsi_new);
% subplot(2,1,2);
% imshow(img_new);
% title('i�������ⷨ')

% hsv����
% img=imread('Fig0638(a)(lenna_RGB).tif');
% subplot(2,1,1)
% imshow(img);
% title('ԭʼͼ��')
% img_hsv=rgb2hsv(img);
% i=img_hsv(:,:,3);
% i_new=histeq(i,256);
% img_hsv_new=cat(3,img_hsv(:,:,1),img_hsv(:,:,2),i_new);
% img_new=hsv2rgb(img_hsv_new);
% subplot(2,1,2);
% imshow(img_new);
% title('v�������ⷨ')


