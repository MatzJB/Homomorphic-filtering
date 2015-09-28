%we only want the button to reevaluate the sliders when we push it, so we
%carry the toggle as a global, but we also have to trigger the
%re-evaluation of the slider code which updates the image.
function toggle_cb(handle, event)
global onoff

onoff = -onoff+1;

slider_cb(handle, event) %pass the handle along and update the image using slider function
