package com.togogo.dao.impl;

import org.junit.jupiter.api.Test;

import java.util.Iterator;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class CityInfoDaoImplTest {

    @Test
    void getCityCode() {
        System.out.println(new CityInfoDaoImpl().getCityCode("朝阳", "北京"));
    }

    @Test
    void setCityInfo() {
        new CityInfoDaoImpl().setCityInfo("cityCode.json");
    }

    @Test
    void getProvince() {
        System.out.println(new CityInfoDaoImpl().getProvince(101010300));
    }

    @Test
    void getCity() {
        System.out.println(new CityInfoDaoImpl().getCity(101010300));
    }


}