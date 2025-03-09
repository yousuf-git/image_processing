% Lab 2 				Sampling Levels
% Course Instructor 	Dr. Ghulam Jillani Ansari
% Auhtor 				Muhammad Yousuf
% Date   				Feb 17, 2025
% Title					Sampling Levels

clear all;		% delete all variables
close all;		% close all open libraries
clc;			% clear screen

originalImg = imread('16.jpg');		% reading the input by filename
%figure, imshow(originalImg), title('Original RGB Image');

grayScaleImg = rgb2gray(originalImg);
%figure, imshow(grayScaleImg), title('Gray Scale Image');

img512 = imresize(grayScaleImg, [512 512]);
%figure, imshow(img512), title('512 x 512 Image');

img256 = imresize(img512, 0.5);		% 1/2 of original size
%figure, imshow(img256), title('256 x 256 Image');

img128 = imresize(img256, 0.5);
%figure, imshow(img128), title('128 x 128 Image');

img64 = imresize(img128, 0.5);
%figure, imshow(img64), title('64 x 64 Image');

img32 = imresize(img64, 0.5);
%figure, imshow(img32), title('32 x 32 Image');

img16 = imresize(img32, 0.5);
%figure, imshow(img16), title('16 x 16 Image');

% Syntax				subplot(row, col, cellNumber)

subplot(2, 4, 1)			% first cell of - 2 rows and 4 columns grid
imshow(originalImg), title('Original RGB Image');

subplot(2, 4, 2);
imshow(grayScaleImg), title('Gray Scale Image');

subplot(2, 4, 3)
imshow(img512), title('512 x 512 Image');

subplot(2, 4, 4)
imshow(img256), title('256 x 256 Image');

subplot(2, 4, 5);
imshow(img128), title('128 x 128 Image');

subplot(2, 4, 6);
imshow(img64), title('64 x 64 Image');

subplot(2, 4, 7);
imshow(img32), title('32 x 32 Image');

subplot(2, 4, 8);
imshow(img16), title('16 x 16 Image');
