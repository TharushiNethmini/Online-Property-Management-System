package com.manager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

public class ManageRoomDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
//validate manager login
	public static List<ManageRoom> confirm(String userName, String password){
		
		ArrayList<ManageRoom > mng = new ArrayList<>();
	
		//Validate
		try {
			
		//To connect to the Database(DBConnect.java)
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from manageroom";  
			rs = stmt.executeQuery(sql);
	
			while(rs.next()) {
				int scheduleno = rs.getInt(1);
				String rNo = rs.getString(2);
				String roomtype = rs.getString(3);
				String customername = rs.getString(4);
				String occupancy = rs.getString(5);
				String roomstatus = rs.getString(6);
				Date dateD = rs.getDate(7);
				Time timeT = rs.getTime(8);
				String keeperid = rs.getString(9);
				
				
				ManageRoom mr = new  ManageRoom(scheduleno,rNo,roomtype,customername,occupancy,roomstatus,dateD,timeT,keeperid); 
				mng.add(mr);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return mng;
	}
	
	
	
//validate room details
	public static boolean validate(String roomNo, String customerName) {
		
		//Validate
		try {
			//To connect to the Database(DBConnect.java)	
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from manageroom where roomNo='"+roomNo+"' and customerName='"+customerName+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
//get method for view page (retrieve data)
	public static List<ManageRoom> getRoom(String roomNo){

			ArrayList<ManageRoom > mng = new ArrayList<>();
			
			//Validate
			try {
			
			//To connect to the Database(DBConnect.java)	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from manageroom where roomNo='"+roomNo+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int scheduleno = rs.getInt(1);
					String rNo = rs.getString(2);
					String roomtype = rs.getString(3);
					String customername = rs.getString(4);
					String occupancy = rs.getString(5);
					String roomstatus = rs.getString(6);
					Date dateD = rs.getDate(7);
					Time timeT = rs.getTime(8);
					String keeperid = rs.getString(9);
					
					
					ManageRoom mr = new  ManageRoom(scheduleno,rNo,roomtype,customername,occupancy,roomstatus,dateD,timeT,keeperid); 
					mng.add(mr);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return mng;
		}
	
	
//Insert a new Schedule
		public static boolean insertnew(String roomno, String roomtype, String customername, String occupancy, String roomstatus, String date, String time, String  keeperno ) {
			
			boolean isSuccess = false;
			
			//validate
			try {
				//To connect to the Database(DBConnect.java)	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into manageroom values(0,'"+roomno+"','"+roomtype+"','"+customername+"','"+occupancy+"','"+roomstatus+"','"+date+"','"+time+"','"+keeperno+"')";
				int rs = stmt.executeUpdate(sql);
				
				if( rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return  isSuccess;
		}


			

//Retrieve insert data 	
		public static List<ManageRoom> display(){
			
			ArrayList<ManageRoom > mng = new ArrayList<>();
		
			//Validate
			try {
				
			//To connect to the Database(DBConnect.java)
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from manageroom";  
				rs = stmt.executeQuery(sql);
		
				while(rs.next()) {
					int scheduleno = rs.getInt(1);
					String rNo = rs.getString(2);
					String roomtype = rs.getString(3);
					String customername = rs.getString(4);
					String occupancy = rs.getString(5);
					String roomstatus = rs.getString(6);
					Date dateD = rs.getDate(7);
					Time timeT = rs.getTime(8);
					String keeperid = rs.getString(9);
					
					
					ManageRoom mr = new  ManageRoom(scheduleno,rNo,roomtype,customername,occupancy,roomstatus,dateD,timeT,keeperid); 
					mng.add(mr);
				}
					
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return mng;
		}

	
			

			
//Update
		public static boolean updateroom(String scheduleno, String roomno, String roomtype, String customername, String roomoccupancy, String roomstatus, String date, String time, String roomkeeperid ) {
			
			try {
				
				//To connect to the Database(DBConnect.java)	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update manageroom set customerName='"+customername+"',occupancy='"+roomoccupancy+"',roomStatus='"+roomstatus+"',date='"+date+"',time='"+time+"',keeperID='"+roomkeeperid+"'"
					+"where ScheduleNo='"+scheduleno+"'";	
				int rs = stmt.executeUpdate(sql);
				
				if( rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}	
			

//Retrieve update data 
		public static List<ManageRoom> getManageRoomDetails(String scheduleno){
			
			//convert string(scheduleno) to an integer value
			int convertedscheduleno = Integer.parseInt(scheduleno);
			
			
			ArrayList<ManageRoom> mr = new ArrayList<>();
			
			try {
				
				//To connect to the Database(DBConnect.java)	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select *  from manageroom where ScheduleNo='"+convertedscheduleno+"' ";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int sno = rs.getInt(1);
					String roomno = rs.getString(2);
					String roomtype = rs.getString(3);
					String cusname = rs.getString(4);
					String occupancy = rs.getString(5);
					String roomstatus = rs.getString(6);
					Date date = rs.getDate(7);
					Time time = rs.getTime(8);
					String keeperid = rs.getString(9);
					
					ManageRoom room = new ManageRoom(sno, roomno, roomtype, cusname, occupancy, roomstatus, date, time, keeperid);
					mr.add(room);
				}
					
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return mr;	
		}
		
		
//Delete
		public static boolean deleteroom(String scheduleno) {
			
			//convert string(scheduleno) to an integer value
			int convsno = Integer.parseInt(scheduleno);
			
			try {
				
				//To connect to the Database(DBConnect.java)	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete  from manageroom where ScheduleNo='"+convsno+"' ";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
					
			}
			catch(Exception e) {
				e.printStackTrace();
			}
				
			return isSuccess;
		}
			



//Retrieve the full table data after dalete  	
		public static List<ManageRoom> remove(){
			
			ArrayList<ManageRoom > mng = new ArrayList<>();
		
			//Validate
			try {
				
			//To connect to the Database(DBConnect.java)
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from manageroom";  
				rs = stmt.executeQuery(sql);
		
				while(rs.next()) {
					int scheduleno = rs.getInt(1);
					String rNo = rs.getString(2);
					String roomtype = rs.getString(3);
					String customername = rs.getString(4);
					String occupancy = rs.getString(5);
					String roomstatus = rs.getString(6);
					Date dateD = rs.getDate(7);
					Time timeT = rs.getTime(8);
					String keeperid = rs.getString(9);
					
					
					ManageRoom mr = new  ManageRoom(scheduleno,rNo,roomtype,customername,occupancy,roomstatus,dateD,timeT,keeperid); 
					mng.add(mr);
				}
					
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return mng;
		}

}		