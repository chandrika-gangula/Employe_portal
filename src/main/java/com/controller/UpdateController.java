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

@WebServlet("/update")
public class UpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		System.out.println(id+"-----------");
		
		EmpDAO d=new EmpDAO();
		
		Employee emp = d.getemployebyid(id);
		if(emp!=null) {
			req.setAttribute("employe", emp);
			RequestDispatcher rd = req.getRequestDispatcher("employeeditpage.jsp");
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher red = req.getRequestDispatcher("ListofEmp");
			red.forward(req, resp);
		}
	
	}
}
