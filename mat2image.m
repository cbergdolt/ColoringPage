% these .mat files are from here
% https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html
% and are the "Pre-computed results on the BSDS500" which appears to be the
% Ultrametric Contour Map created by the latest algorithm developed in
% their lab [Contour Detection and Hierarchical Image Segmentation. P. Arbelaez, M. Maire, C. Fowlkes and J. Malik. IEEE TPAMI, Vol. 33, No. 5, pp. 898-916, May 2011.]

%%
I = load('12003.mat');
img = I.ucm2;

%invert values in m so the segment boundaries are black instead of white
img_invert = (img-1).*(-1);

%display/save the images
figure(1)
imshow (img_invert);
imwrite(img_invert, 'output/contour_map.jpg');
figure(2)
imshow(img);
