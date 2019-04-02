rgb=imread('C:\3rd year 1st sem\Design Project\Blood cell\rbc_zoom3.jpg');
imshow(rgb)
%rgb2=rgb2gray(rgb);

rgb2=im2bw(rgb);
imshow (rgb2)
%[J,T] = histeq(rgb2);
%imshow(rgb2)
rgb4=imcomplement(rgb2)
imshow(rgb4)
rgb3 = imfill(rgb4,26,'holes');
imshow(rgb3)
%[centers,radii] = imfindcircles(rgb,[15 15],'ObjectPolarity','dark', ...
 %         'Sensitivity',0.95,'Method','twostage');
 %     delete(h);
%h = viscircles(centers,radii)
[centers,radii] = imfindcircles(rgb3,[17 19],'ObjectPolarity','bright', ...
          'EdgeThreshold',0.4,'Sensitivity',0.945,'Method','twostage');
      
h = viscircles(centers,radii)