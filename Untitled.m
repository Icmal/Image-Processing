img = imread('C:/1.jpg'); % Read image
red = img(:,:,1); % Red channel
green = img(:,:,2); % Green channel
blue = img(:,:,3); % Blue channel
a = zeros(size(img, 1), size(img, 2));
just_red = cat(3, red, a, a);
just_green = cat(3, a, green, a);
just_blue = cat(3, a, a, blue);
back_to_original_img = cat(3, red, green, blue);
figure, imshow(img), title('Original image')
figure, imshow(just_red), title('Red channel')
figure, imshow(just_green), title('Green channel')
figure, imshow(just_blue), title('Blue channel')
figure, imshow(back_to_original_img), title('Back to original image')
or=im2double(img)
jr=im2double(just_red)
jg=im2double(just_green)
jb=im2double(just_blue)
%for i=1:650
%    for j=1:650
%    just_red(i,j)=k
%        k= 455
%    end
%end
hsv = rgb2hsv(img);
value = hsv(:,:,3);
%for i=1:650
  % for j=1:600
    % huewithdegrees(i,j) = value(i,j) * 360;    
   %end
%end
s = size(value);
value = unique(reshape(value,1,[]));
%v = reshape( value.' ,1,numel(value));
[x,z] = ndgrid(1:s(2),1:s(1));
%plot3(x,huewithdegrees.',z);
%imtool(huewithdegrees);
