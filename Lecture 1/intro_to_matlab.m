clc; clear; close all;
%% Intro To Matrices
A = [1 2 3;
    4 5 6 ;
    7 8 9];

B = zeros(100, 80);
B(20:50, 40:50) = 1;

B2 = uint8(B);
imshow(B);

%% Making an Image - Letter T
name = zeros(100, 80);
name(10:90, 35:45) = 205;
name(10:20, 10:70) = 205;
imshow(uint8(name));

%% Working with Images

I = imread("picture/lenaColor.jpg");
% imshow(I);

Igray = rgb2gray(I);
% imshow(Igray);

[row, col] = size(Igray);

I(20:500, 20:500) = 0;
%imshow(I);

%Igray(100, 400);

mask = Igray > 200;

Igray(mask) =  0;
imshow(Igray);

%% Cutting out a picture - cropping
Ipart = Igray(250:280, 200:400); % cat's eye
imshow(Ipart);

figure(1)
subplot(1,2,1)
imshow(Igray);
subplot(1,2,2);
imshow(Ipart);

%% Creating a colored Matrix
rows = 200;
cols = 200;

R = 255 * ones(rows, cols);
G = 255 * ones(rows, cols);
B = 0 * ones(rows, cols);

RGB = cat(3, R, G, B);

imshow(uint8(RGB));

%% Working with a lego - detect image

lego = imread("picture\lego.jpg");
%imshow(lego);

[rows, columns, chanels] = size(lego);
% detected image initialization - same size as input
detectPixels = ones(rows, columns);

pxcount = 0;
for i = 1 : rows
    for j = 1 : columns
        if lego(i, j, 1) <60  && lego(i, j, 2) < 140 && lego(i, j, 2) > 60 && lego(i, j, 3) < 70
            pxcount = pxcount + 1;
            detectPixels(i, j) = 0;
            lego(i, j, :) = 0; % This destroys the original!
        end
    end
end

figure(2)
subplot(1,2,1)
imshow(lego); % selected pixels turn black
subplot(1,2,2);
imshow(detectPixels); % A black & white copy of the blackend pixels in original image
disp(pxcount);
