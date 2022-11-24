close all;
clear all;
clc;

pkg load image;

#a
imgparrot = imread('parrots.jpg');
subplot(121),imshow(imgparrot);  % Load and display the parrot image
title('Original Image');

#b
whos imgparrot  % Examine the size of the parrots

#c and d
gray_conv = rgb2gray(imgparrot);
subplot(122),imshow(gray_conv);
title ('Gray-level version');


