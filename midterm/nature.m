clc;
clf;
clear all;
close all;
pkg load image;

#b
imgnature = imread('nature.jpg');
gray = rgb2gray(imgnature);
subplot(331), imshow(imgnature);
title('Original Image')

whos imgnature
whos gray

#c
#red
red=imgnature;
red(:,:,2)=0;
red(:,:,3)=0;
subplot(332), imshow(red);
title('Red')

#green
green=imgnature;
green(:,:,1)=0;
green(:,:,3)=0;
subplot(333), imshow(green);
title('Green')

#blue
blue=imgnature;
blue(:,:,1)=0;
blue(:,:,2)=0;
subplot(334), imshow(blue);
title('Blue')

#convert jpg image to png image.
imwrite(imgnature,'nature.png');
imwrite(red,'nature_red.png');
imwrite(green,'nature_green.png');
imwrite(blue,'nature_blue.png');


