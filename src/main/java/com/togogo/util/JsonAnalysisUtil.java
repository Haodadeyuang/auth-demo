package com.togogo.util;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @description:用于解析Json文件的工具类
 * 提供了一个根据json文件名（必须放置在main/resources目录下）和键名获取值的方法
 * @author: Haodadeyu
 * @time: 2020/10/24 20:40
 */
public class JsonAnalysisUtil {
    private static JSONObject GetJsonObj(String json_filename) throws Exception{
        InputStreamReader input =new InputStreamReader(new FileInputStream(new File(
                "src//main//resources//"+json_filename)),"UTF-8");
        String text="";
        try {
            int n;
            while ((n = input.read()) != -1) { // 利用while同时读取并判断
                text+=(char)n;
            }
        } finally {
            if (input != null) { input.close(); }
        }

        //1.构造一个json对象
        JSONObject obj = new JSONObject(text.substring(text.indexOf("{")));   //过滤读出的utf-8前三个标签字节,从{开始读取
        //2.通过getXXX(String key)方法获取对应的值
        return obj;
    }

    public static Object getJsonValues(String json_filename,String key,Object valueType) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        JSONObject obj= null;
        try {
            obj = GetJsonObj(json_filename);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //使用反射获得valueType的类型
        Class cls=valueType.getClass();
        String valueTypeName=cls.getName();
        valueTypeName=valueTypeName.substring(valueTypeName.lastIndexOf('.')+1);
        if(valueTypeName.equals("Integer"))
        {
            valueTypeName="Int";
        }
        Method m = obj.getClass().getMethod("get"+valueTypeName, String.class);
        return m.invoke(obj,key);
    }
}
