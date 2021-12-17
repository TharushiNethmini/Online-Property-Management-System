package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String scheduleno = request.getParameter("snum");
		String roomno = request.getParameter("rnm");
		String roomtype = request.getParameter("rty");
		String customername = request.getParameter("cnme");
		String roomoccupancy = request.getParameter("rocc");
		String roomstatus = request.getParameter("rsts");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String roomkeeperid = request.getParameter("rkid");
		
		
		boolean isTrue;
		
		isTrue = ManageRoomDBUtil.updateroom(scheduleno, roomno, roomtype, customername, roomoccupancy, roomstatus, date, time, roomkeeperid);
		
		if(isTrue == true) {
			
			List<ManageRoom> manageroomDetails = ManageRoomDBUtil.getManageRoomDetails(scheduleno);
			request.setAttribute("roomDetails", manageroomDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<ManageRoom> manageroomDetails = ManageRoomDBUtil.getManageRoomDetails(scheduleno);
			request.setAttribute("roomDetails", manageroomDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("viewaccount.jsp");
			dis2.forward(request, response);
		
		}
		
		
		
	}

}
