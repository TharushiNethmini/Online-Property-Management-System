package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomnum = request.getParameter("rnum");
		String roomtype = request.getParameter("rtype");
		String customername = request.getParameter("cusname");
		String occupancy= request.getParameter("occu");
		String roomstatus = request.getParameter("rstat");
		String date = request.getParameter("dt");
		String time = request.getParameter("tm");
		String keeperno = request.getParameter("kid");
		
		boolean isTrue;
		
		isTrue = ManageRoomDBUtil.insertnew(roomnum, roomtype, customername, occupancy, roomstatus, date, time, keeperno);
		
		if(isTrue == true) {
			List<ManageRoom> roomDetails =ManageRoomDBUtil.display();    
	        request.setAttribute("roomDetails", roomDetails);
	        
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}
	
}
