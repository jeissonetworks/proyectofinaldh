package com.dh.proyectointegrador.DigitalBooking.util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CalendarUtil {

    public static Calendar StringToCalendar(String fecha){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date date = null;
            date = formatter.parse(fecha);
            Calendar calender = Calendar.getInstance();
            calender.setTime(date);
            return  calender;
        } catch (ParseException e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
