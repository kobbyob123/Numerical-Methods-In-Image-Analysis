clc; clear; close all

%% Making an Image - Letter K
rows = 100;
col = 100;
w = 255;

img0 = zeros(rows, col);
img0(20:80, 20:27) = w;

%i = 27; j = 50;
%while i <= 70 & j >= 17
%    img(i, j) = w;
%    i = i + 2; j = j - 2; % Update indices for the diagonal line
%end

i = 27; j = 50;
for idx = 1: 14
    img0(j, i) = w; % Set the pixel for the diagonal line
    i = i + 2; j = j - 2; % Update indices for the diagonal line
end

%img(27, 50) = 100;
imshow(uint8(img0))

%% Working With Images

img1 = imread("picture/lenaColor.jpg");
imshow(img1);

[l1, l2, chn] = size(img1);

img1(int32(0.2*l1):int32(0.8*l1), int32(0.2*l2):int32(0.8*l2)) = 255;

imshow(img1);