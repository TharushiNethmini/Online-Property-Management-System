package com.manager;

import java.sql.Date;
import java.sql.Time;

public class ManageRoom {
	private int scheduleNo;
	private String roomNo;
	private String roomType;
	private String customerName;
	private String occupancy;
	private String roomStatus;
	private Date date;
	private Time time;
	private String keeperID;
	
	//Constructors
	public ManageRoom(int scheduleNo,String roomNo, String roomType, String customerName, String occupancy, String roomStatus, Date date,Time time, String keeperID) {
		this.scheduleNo = scheduleNo;
		this.roomNo = roomNo;
		this.roomType = roomType;
		this.customerName = customerName;
		this.occupancy = occupancy;
		this.roomStatus = roomStatus;
		this.date = date;
		this.time = time;
		this.keeperID = keeperID;
	}

	//Getters
	public int getScheduleNo() {
		return scheduleNo;
	}
	
	public String getRoomNo() {
		return roomNo;
	}

	public String getRoomType() {
		return roomType;
	}

	public String getCustomerName() {
		return customerName;
	}

	public String getOccupancy() {
		return occupancy;
	}

	public String getRoomStatus() {
		return roomStatus;
	}
	
	public Date getDate() {
		return date;
	}

	public Time getTime() {
		return time;
	}

	public String getKeeperID() {
		return keeperID;
	}

	

}
