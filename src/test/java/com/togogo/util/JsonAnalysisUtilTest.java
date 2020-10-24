package com.togogo.util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class JsonAnalysisUtilTest {

    @Test
    void jsonParser() throws Exception {
        System.out.println(JsonAnalysisUtil.getJsonValues("example.json","FLAG",1));
    }
}