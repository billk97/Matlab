function displayImage(IMG)

% get the width and height of the image
[height, width, channels] = size(IMG);

if channels == 1
    colormap('gray');
    if isa(IMG, 'uint8')
        image(IMG);
    else
        image(255 * IMG);
    end
else
    image(IMG);
end
    

end