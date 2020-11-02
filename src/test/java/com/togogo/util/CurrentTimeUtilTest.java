package com.togogo.util;

import org.junit.jupiter.api.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

class CurrentTimeUtilTest {

    @Test
    void getCurrentTime() {
        System.out.println(CurrentTimeUtil.getCurrentTime());
    }
}