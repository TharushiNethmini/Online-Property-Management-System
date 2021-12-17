package com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String roomno= request.getParameter("rno");
		String customername = request.getParameter("cusname");
		boolean isTrue;
		
		isTrue = ManageRoomDBUtil.validate(roomno, customername);
		
		if(isTrue == true) {
			List<ManageRoom> roomDetails = ManageRoomDBUtil.getRoom(roomno);
			request.setAttribute("roomDetails",roomDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewaccount.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Room Number or Customer Name is incorrect');");
			out.println("location='view.jsp'");
			out.println("</script>");
			
		}
		
	
	}

}
