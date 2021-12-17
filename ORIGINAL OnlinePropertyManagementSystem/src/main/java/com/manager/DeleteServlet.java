package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String scheduleno = request.getParameter("snum");
		boolean isTrue;
		
		isTrue = ManageRoomDBUtil.deleteroom(scheduleno);
		
		if(isTrue == true) {
			List<ManageRoom> roomDetails =ManageRoomDBUtil.remove();    
	        request.setAttribute("roomDetails", roomDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {	
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessful.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}



