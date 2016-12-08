%# load a grayscale image
img = imread('coins.png');

figure
imshow('coins.png');

%# display the image
figure
imshow(img,[]);

%# false-color
colormap('hot')
