%MatzJB 2015
function slider_cb(handle, event)
global onoff

h_controls = getappdata(handle, 'h_controls');
h_imshow   = getappdata(handle, 'h_imshow');
im_data    = get(h_imshow, 'userdata');

children   = get(h_controls, 'children');
tag        = get(children, 'tag');

index      = find(strcmp(tag, 'Toggle'));
h_toggle   = children(index);

str_toggle = {'On','Off'};
set(h_toggle, 'String', ['Turn filter ', str_toggle{onoff+1}])

index      = find(strcmp(tag, 'slider_D0'));
D0         = get(children(index), 'value');

index      = find(strcmp(tag, 'slider_c'));
c          = get(children(index), 'value');

index      = find(strcmp(tag, 'slider_gamma_h'));
gammah     = get(children(index), 'value');

index      = find(strcmp(tag, 'slider_gamma_l'));
gammal     = get(children(index), 'value');

if onoff==1
    img    = homomorphic_filter_computation(im_data, gammal, gammah, D0, c);
else
    img    = im_data;
end

%fprintf(1, 'gammal = %f, gammah = %f, c = %f, D0 = %f\n', gammal, gammah, c, D0);
%fprintf(1, 'range <- [%f, %f]\n', min(min(img)), max(max(img)))

set(h_imshow, 'cdata', img) %replace with the new, filtered image

