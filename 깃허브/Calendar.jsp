<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.*" %>
    <%@page import="java.text.SimpleDateFormat" %>
<%



Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH)+1;
int week = cal.get(Calendar.DAY_OF_WEEK);
int date = cal.get(Calendar.DATE); 
int second= cal.get(Calendar.SECOND);
int hour = cal.get(Calendar.HOUR);
int minute = cal.get(Calendar.MINUTE);
String date1 = null;

if(date<10){
		date1="0"+Integer.toString(date);
}else{
	date1=Integer.toString(date);
}
System.out.print(date);
String getmonth=null;
String getdate=null;
switch(month){
case 1 : getmonth="Jan";
		break;
case 2 : getmonth="Feb";
break;
case 3 : getmonth="Mar";
break;
case 4 : getmonth="Apr";
break;
case 5 : getmonth="May";
break;
case 6 : getmonth="Jun";
break;
case 7 : getmonth="Jul";
break;
case 8 : getmonth="Aug";
break;
case 9 : getmonth="Sep";
break;
case 10 : getmonth="Oct";
break;
case 11 : getmonth="Nov";
break;
case 12 : getmonth="Dec";
break;
}
switch(week){
case 1 : getdate="Sun";
		break;
case 2 : getdate="Mon";
break;
case 3 : getdate="Tue";
break;
case 4 : getdate="Wed";
break;
case 5 : getdate="Thu";
break;
case 6 : getdate="Fri";
break;
case 7 : getdate="Sat";
break;
}
%>