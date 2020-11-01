package com.togogo.dao;

import java.util.List;

public interface ICityInfoDao {
    /**
     * 获取全部城市名
     */
    List<String> getAllCityInfo();

    /**
     * 根据城市名获取城市ID
     *
     * @param cityName,provinceName
     * @return
     */
    Integer getCityCode(String cityName, String provinceName);

    /**
     * 将json对象的键值对插入表中
     *
     * @param jsonFileName
     * @return
     */
    Boolean setCityInfo(String jsonFileName);

    /**
     * 根据城市代码获取省份名跟城市名
     *
     * @return
     */
    String getProvince(Integer cityCode);

    String getCity(Integer cityCode);
}
