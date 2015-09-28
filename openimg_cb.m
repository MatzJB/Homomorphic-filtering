function openimg(handle, event)

[filename, path, FilterIndex] = uigetfile('*.jpg');

im_data  = imread([path,filename], 'jpg');
tmp      = get(handle,'parent');
tmp      = get(tmp,'parent');
h_imshow = getappdata(tmp, 'h_imshow');

if length(size(im_data)) == 3
    im_data = rgb2gray(im_data);
end

%if you wish to conditionally resize the image before applying filter
%{
if size(im_data, 1) > 1000
    im_data = imresize(im_data, 0.5);
end
%}

im_data  = im2double(im_data);

%replace cdata of handle to the original image data
set(h_imshow, 'cdata', im_data) 
set(h_imshow, 'userdata', im_data);

slider_cb(handle, event) %pass the handle along and update the image using slider function