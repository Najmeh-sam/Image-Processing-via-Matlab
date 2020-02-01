% clear all;
% clc;
% inImg = imread('D:\Najmeh\Courses\HistogeramSpecialization\original3.tif');
function hsvMain(inImg)
%inImg = imread('D:\Najmeh\Courses\ImagePro\home2\81.jpg');
figure, imshow(inImg);
inImg=rgb2hsv(inImg);
inhistR=imhist(inImg(:,:,1));
inhistG=imhist(inImg(:,:,2));
inhistB=imhist(inImg(:,:,3));
 inhistB=abs(inhistB-255);
% figure, imhist(inImg(:,:,1));
% figure, imhist(inImg(:,:,2));
 figure, imhist(inImg(:,:,3));

[m n l]=size(inImg);

inhistR=inhistR./(m*n);
inhistG=inhistG./(m*n);
inhistB=inhistB./(m*n);

% for i=1:60
%     img2 = imread(['D:\Najmeh\Courses\ImagePro\home2\natures\',int2str(i),'.jpg']);
%     img2=rgb2hsv(img2);
%     [a b c]=size(img2);
%     x=imhist(img2(:,:,1))';
%     p(i,:)=x./(a*b);
%     minimum(i)=Jensen(p(i,:)+1,inhistR'+1);
% end
% 
% [minim,index1]=min(minimum);
% img2 = imread(['D:\Najmeh\Courses\ImagePro\home2\natures\',int2str(index1),'.jpg']);
% [a b c]=size(img2);
% p(index1)=p(index1)*(a*b);
% inImg(:,:,1)=histeq(inImg(:,:,1), p(index1));  
% 
% for i=1:60
%     img2 = imread(['D:\Najmeh\Courses\ImagePro\home2\natures\',int2str(i),'.jpg']);
%     img2=rgb2hsv(img2);
%     [a b c]=size(img2);
%     x=imhist(img2(:,:,2))';
%     p(i,:)=x./(a*b);
%     minimum(i)=Jensen(p(i,:)+1,inhistG'+1);
% end
% 
% [minim,index2]=min(minimum);
% img2 = imread(['D:\Najmeh\Courses\ImagePro\home2\natures\',int2str(index2),'.jpg']);
% [a b c]=size(img2);
% p(index2)=p(index2)*(a*b);
% inImg(:,:,2)=histeq(inImg(:,:,2), p(index2));

for i=1:83
    img2 = imread(['natures/',int2str(i),'.jpg']);
    img2=rgb2hsv(img2);
    [a b c]=size(img2);
    x=imhist(img2(:,:,3))';
    p(i,:)=x./(a*b);
    %p(i,:)=imhist(img2(:,:,3))';
    minimum(i)=Jensen(p(i,:)+1,inhistB'+1);
    %minimum(i)=Jensen(p(i,:)+1,inhistB'+1);
end

[minim,index3]=min(minimum);
 img2 = imread(['natures\',int2str(index3),'.jpg']);
 [a b c]=size(img2);
 p(index3)=p(index3)*(a*b);
%inImg(:,:,3)=histeq(inImg(:,:,3), p(index3));
inImg(:,:,3)=histeq(inImg(:,:,3), p(index3));
%inImg(:,:,3)=abs(z-255);
inImg1=hsv2rgb(inImg);
figure, imshow(inImg1);  
figure, imhist(inImg1(:,:,3));
   
%psnr=PeakSignaltoNoiseRatio(inImg, g);


