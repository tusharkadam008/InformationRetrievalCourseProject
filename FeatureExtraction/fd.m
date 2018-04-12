function fde=fd(imagename)
    img=imread(imagename);
    if(size(img,3)==3)
        img=rgb2gray(img);
    end
    level=graythresh(img);
    bimg=imbinarize(img,level);
    limg=bwareafilt(bimg,1);
    bound=bwconncomp(limg);
    ll=size(img,1);
    mm=size(img,2);
    [x,y]=ind2sub([ll mm],bound.PixelIdxList{1});
    p=size(x,1)
    m=floor(p/255);
    k=1;
    de=[];
    for j=1:m:255*m
        de(k)=x(j)+y(j)*i;
        k=k+1;
    end
    de=fft(de);
    fde=[];
    k=1;
    q=sqrt(real(de(1))*real(de(1))+imag(de(1))*imag(de(1)));
    for ii=2:255
        mp=sqrt(real(de(ii))*real(de(ii))+imag(de(ii))*imag(de(ii)));
        fde(k)=mp/q;
        k=k+1;
    end