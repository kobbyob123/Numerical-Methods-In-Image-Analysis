%% Image Detection

Iclear = imread("Lecture 2\room1.jpeg");
Itest = imread("Lecture 2\roomPerson.jpeg");

% Convert images to grayscale for Processing
IclearGray = rgb2gray(Iclear);
ItestGray = rgb2gray(Itest);

% Perform Image subtraction to highlight differences
Idiff = imabsdiff(IclearGray, ItestGray);

imshow(Idiff);

%% - under construction
new = regionprops(Idiff);

if regionprops(Iclear) > 10
end

