close all;
clear all;
clc

pkg load image;

Orig_Img = imread('fruits.png');  % Read the image information
subplot(231);
imshow(Orig_Img);                 % Display the original image
title('Original Image')

# Spatial Resolution
Orig_Img1 = imresize(imresize(Orig_Img,1/32),32); % at 8x8 Resolution
subplot(232);
imshow(Orig_Img1);
title('at 8x8 resolution');
imwrite(Orig_Img1,'fruits2.png'); % Change filetype to png

# RGB to HSV
chg_color = rgb2hsv(Orig_Img);    % Change the colore image to HSV
subplot(233)
imshow(chg_color);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_color,'fruits3.png');



