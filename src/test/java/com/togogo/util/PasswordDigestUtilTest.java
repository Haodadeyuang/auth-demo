package com.togogo.util;

import org.junit.jupiter.api.Test;

import java.security.NoSuchAlgorithmException;

import static org.junit.jupiter.api.Assertions.*;

class PasswordDigestUtilTest {

    @Test
    void digest() {
        try {
            System.out.println(PasswordDigestUtil.Digest("abc1", "23"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }
}