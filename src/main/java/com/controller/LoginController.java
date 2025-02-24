package com.controller;

import java.io.IOException;

import com.empDAO.EmpDAO;
import com.model.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String ename=request.getParameter("ename");
		 String password=request.getParameter("pword");
		 System.out.println(ename);
		 System.out.println(password);
		 
		 EmpDAO e=new EmpDAO();
		 
		 Employee emp = e.valid(ename, password);
		 System.out.println(emp);
		 
		 HttpSession session = request.getSession();
		 
		if(emp!=null) {
			session.setAttribute("emp", emp.getEname());
			session.setAttribute("user",emp);
			
			response.sendRedirect("ListofEmp");
			
		}
		 
		else {
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			r.forward(request, response);
			
		}
		 
		 
		 
	}

}
