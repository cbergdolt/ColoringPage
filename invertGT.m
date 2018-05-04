% inverts ground truth image so that it is black lines on white background
%   instead of white lines on black background

%%
filename = '12003.jpg';
img = imread(strcat('groundTruth/', filename));
img_invert = imcomplement(img);
imwrite(img_invert, 'output/groundTruth/12003.jpg');
