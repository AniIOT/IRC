import decode_qr.m.*;
%%
cam = webcam('Logitech HD Webcam C270');
%%
javaaddpath('javase-3.3.0.jar');
javaaddpath('core-3.3.0.jar');

import com.google.zxing.qrcode.*; 
import com.google.zxing.client.j2se.*; 
import com.google.zxing.*; 
import com.google.zxing.common.*; 
import com.google.zxing.Result.*;
%%
   while true
    im = snapshot(cam);
    message = decode_qr(im);
    imagesc(im);
    title(message);
   end
%%   