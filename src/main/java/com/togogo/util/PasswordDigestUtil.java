package com.togogo.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/21 15:41
 */
public class PasswordDigestUtil {
    public static String Digest(String password, String salt) throws NoSuchAlgorithmException {
        return Encryption(password+salt);
    }

    private static String Encryption(String source) throws NoSuchAlgorithmException {

        MessageDigest digest = MessageDigest.getInstance("md5");
        //2.执行加密操作
        byte[] bytes = source.getBytes();
        //在MD5算法这，得到的目标字节数组的特点：长度固定为16
        byte[] targetBytes = digest.digest(bytes);
        //3.声明字符数组
        char[] characters = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        //4.遍历targetBytes
        StringBuilder builder = new StringBuilder();
        for (byte b : targetBytes) {
            //5.取出b的高四位的值
            //先把高四位通过右移操作拽到低四位
            int high = (b >> 4) & 15;
            //6.取出b的低四位的值
            int low = b & 15;
            //7.以high为下标从characters中取出对应的十六进制字符
            char highChar = characters[high];
            //8.以low为下标从characters中取出对应的十六进制字符
            char lowChar = characters[low];
            builder.append(highChar).append(lowChar);
        }
        return builder.toString();
    }
}

