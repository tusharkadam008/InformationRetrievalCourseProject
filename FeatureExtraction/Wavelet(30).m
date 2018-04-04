imgGray=imread('2196.png');
coeff_1 = dwt2(imgGray, 'coif1');
coeff_2 = dwt2(coeff_1, 'coif1');
coeff_3 = dwt2(coeff_2, 'coif1');
coeff_4 = dwt2(coeff_3, 'coif1');
coeff_5 = dwt2(coeff_4, 'coif1');

% construct the feaute vector
meanCoeff = mean(coeff_5);
stdCoeff = std(coeff_5);

waveletMoments = [meanCoeff stdCoeff]