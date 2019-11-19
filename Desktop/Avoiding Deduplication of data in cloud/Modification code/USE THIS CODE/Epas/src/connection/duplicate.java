package connection;


import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.imageio.ImageIO;

public class duplicate {

    public static String duplicate(String file) throws NoSuchAlgorithmException, Exception {

        File input = new File("C:/Users/SaratKumar/Desktop/"+file);
        
        BufferedImage buffImg = ImageIO.read(input);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ImageIO.write(buffImg, "jpg", outputStream);
        byte[] data = outputStream.toByteArray();

        System.out.println("Start MD5 Digest");
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(data);
        byte[] hash = md.digest();
        System.out.println("hash value  "+returnHex(hash));
        String hashString = returnHex(hash);
        return hashString;
    }                                       // Belongs to main class
   
    // Below method of converting Byte Array to hex
    // Can be found at: http://www.rgagnon.com/javadetails/java-0596.html
    static String returnHex(byte[] inBytes) throws Exception {
        String hexString ="";
        for (int i=0; i < inBytes.length; i++) { //for loop ID:1
            hexString +=
            Integer.toString( ( inBytes[i] & 0xff ) + 0x100, 16).substring( 1 );
        }                                   // Belongs to for loop ID:1
    return hexString;
  }                                         // Belongs to returnHex class

}                                           // Belongs to Main class