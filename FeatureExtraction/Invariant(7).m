clc;
img=imread('2196.png');
rimg=imresize(img,[512 512]);
level=graythresh(img);
bimg=imbinarize(img,level);
limg=bwareafilt(bimg,1);
bound=bwconncomp(limg);
[x y]=ind2sub(1,bound.PixelIdxList{1});
%Invariant Moments of Object
invariant=feature_vec(limg)