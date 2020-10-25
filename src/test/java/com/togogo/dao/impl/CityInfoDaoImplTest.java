package com.togogo.dao.impl;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CityInfoDaoImplTest {

    @Test
    void getCityCode() {
        System.out.println(new CityInfoDaoImpl().getCityCode("朝阳","北京"));
    }

    @Test
    void setCityInfo() {
        new CityInfoDaoImpl().setCityInfo("cityCode.json");
    }
}