package com.nmcnpm.hashing;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;

import javax.crypto.Cipher;

public class RSA implements IMethod {

    private static RSA rsa = null;

    private RSA() {
        try {
            SecureRandom sr = new SecureRandom();
            KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
            kpg.initialize(2048, sr);
            KeyPair kp = kpg.genKeyPair();
            // PublicKey
            PublicKey publicKey = kp.getPublic();
            // PrivateKey
            PrivateKey privateKey = kp.getPrivate();

            File publicKeyFile = createKeyFile(new File("publicKey.rsa"));
            File privateKeyFile = createKeyFile(new File("privateKey.rsa"));

            // Lưu Public Key
            FileOutputStream fos = new FileOutputStream(publicKeyFile);
            fos.write(publicKey.getEncoded());
            fos.close();

            // Lưu Private Key
            fos = new FileOutputStream(privateKeyFile);
            fos.write(privateKey.getEncoded());
            fos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized static RSA getInstance() {
        if (rsa == null) {
            rsa = new RSA();
        }
        return rsa;
    }

    private static File createKeyFile(File file) throws IOException {
        if (!file.exists()) {
            file.createNewFile();
        } else {
            file.delete();
            file.createNewFile();
        }
        return file;
    }

    @Override
    public String encrypt(String plainText) {
        String strEncrypt = "";
        try {
            // Đọc file chứa public key
            FileInputStream fis = new FileInputStream("publicKey.rsa");
            byte[] b = new byte[fis.available()];
            fis.read(b);
            fis.close();

            // Tạo public key
            X509EncodedKeySpec spec = new X509EncodedKeySpec(b);
            KeyFactory factory = KeyFactory.getInstance("RSA");
            PublicKey pubKey = factory.generatePublic(spec);

            // Mã hoá dữ liệu
            Cipher c = Cipher.getInstance("RSA");
            c.init(Cipher.ENCRYPT_MODE, pubKey);
            byte encryptOut[] = c.doFinal(plainText.getBytes());
            strEncrypt = Base64.getEncoder().encodeToString(encryptOut);
        } catch (Exception ex) {
            ex.printStackTrace();
            return "";
        }
        return strEncrypt;
    }

    @Override
    public String decrypt(String encodedText) {
        String result = "";
        try {
            // Đọc file chứa private key
            FileInputStream fis = new FileInputStream("privateKey.rsa");
            byte[] b = new byte[fis.available()];
            fis.read(b);
            fis.close();

            // Tạo private key
            PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(b);
            KeyFactory factory = KeyFactory.getInstance("RSA");
            PrivateKey priKey = factory.generatePrivate(spec);

            // Giải mã dữ liệu
            Cipher c = Cipher.getInstance("RSA");
            c.init(Cipher.DECRYPT_MODE, priKey);
            byte decryptOut[] = c.doFinal(Base64.getDecoder().decode(encodedText));
            // eJ1h2JLEulXQZf4t7rxP8HynxMKrYcAmGvIYsrUb77ys4K8uUj48ayT3bSsM3wfnoJLtgww2idNB7r8UeIyIGe
            result = new String(decryptOut);
        } catch (Exception ex) {
            ex.printStackTrace();
            return "";
        }
        return result;
    }
}
