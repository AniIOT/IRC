function message = decode_qr(img)
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.Result;
import com.google.zxing.client.result.ResultParser;

jimg = im2java2d(img);
source = BufferedImageLuminanceSource(jimg);

bitmap = BinaryBitmap(HybridBinarizer(source));

qr_reader = QRCodeReader;
try 
    result = qr_reader.decode(bitmap);
    parsedResult = ResultParser.parseResult(result);
    message = char(result.getText());
catch e
    message = [];        
end

clear source;
clear jimg;
clear bitmap;
