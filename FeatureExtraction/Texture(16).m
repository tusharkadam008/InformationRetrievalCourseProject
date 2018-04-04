img=imread('2150.tif');

glcm=graycomatrix(img,'Offset',[0 1]);
stats=graycoprops(glcm,'Contrast');
stats=graycoprops(glcm,'Correlation');
stats=graycoprops(glcm,'Homogeneity');
stats=graycoprops(glcm,'Energy');

glcm=graycomatrix(img,'Offset',[-1 1]);
stats=graycoprops(glcm,'Contrast');
stats=graycoprops(glcm,'Correlation');
stats=graycoprops(glcm,'Homogeneity');
stats=graycoprops(glcm,'Energy');

glcm=graycomatrix(img,'Offset',[-1 0]);
stats=graycoprops(glcm,'Contrast');
stats=graycoprops(glcm,'Correlation');
stats=graycoprops(glcm,'Homogeneity');
stats=graycoprops(glcm,'Energy');

glcm=graycomatrix(img,'Offset',[-1 -1]);
stats=graycoprops(glcm,'Contrast');
stats=graycoprops(glcm,'Correlation');
stats=graycoprops(glcm,'Homogeneity');
stats=graycoprops(glcm,'Energy');
