package com.togogo.util;

import java.text.ParseException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/2 18:50
 */
public class CurrentTimeUtil {
    public static String getCurrentTime()
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        return df.format(new Date());
    }


}
