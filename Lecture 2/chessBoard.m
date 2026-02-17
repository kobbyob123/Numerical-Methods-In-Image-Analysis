%% Lecture 2

% Generate a chess board - Hardcode

rows1 = [1, 0, 1, 0, 1, 0, 1, 0];
rows2 = [0, 1, 0, 1, 0, 1, 0, 1];

M1 = [rows1; rows2; rows1; rows2; rows1; rows2; rows1; rows2];
imshow(M);

%% Try an elemgant way - under construction
B = ones(8);
W = ones(8);

for i = 1:8
