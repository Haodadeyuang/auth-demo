package com.togogo.dao;

public interface ICityInfoDAO {
    /**
     * 根据城市名获取城市ID
     * @param cityName
     * @return
     */
    Integer getCityCode(String cityName,String provinceName);

    /**
     * 将json对象的键值对插入表中
     * @param jsonFileName
     * @return
     */
    Boolean setCityInfo(String jsonFileName);
}
