function qr = encode_qr(message, s)
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.BarcodeFormat;

% encoding qr
qr_writer = QRCodeWriter;
M_java = qr_writer.encode(message, BarcodeFormat.QR_CODE, s(2), s(1));
qr = zeros(M_java.getHeight, M_java.getWidth); 
for i=1:M_java.getHeight 
for j=1:M_java.getWidth 
qr(i,j) = M_java.get(j-1,i-1); 
end 
end 

clear qr_writer;
clear M_java;

qr = logical(qr);