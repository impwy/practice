package jspbean;

import java.util.Calendar;

public class Today {
	Calendar now = Calendar.getInstance();
	
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH)+1;
	int date = now.get(Calendar.DAY_OF_MONTH);
	

	public int getYear() {
		return year;
	}
	public int getMonth() {
		return month;
	}
	public int getDate() {
		return date;
	}
	
}
