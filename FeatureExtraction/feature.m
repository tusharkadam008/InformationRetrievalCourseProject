a=csvread('Image_Data.csv',0,0,[0 0 12676 0]);
b=csvread('Image_Data.csv',0,1,[0 1 12676 1]);
c='.png';
for i=1:length(a)
    try 
        name=num2str(a(i));
        img=strcat(name,c);
        fdes=fd(img);
        fetext=Texture(img);
        invar=Invariant(img);
        fehist=hist(img);
        %wav=Wavelet(img);
        fit=horzcat(a(i),fdes,invar,fetext,fehist,b(i));
        dlmwrite('final.csv',fit,'-append');
    end
end