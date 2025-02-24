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

@WebServlet("/getuserdetails")
public class Showuserprofile extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println("==========================================");
		Employee e=(Employee)session.getAttribute("user");
		System.out.println(e+" employeeeeee");
		EmpDAO dao=new EmpDAO();
		Employee employee = dao.getemployebyid(e.getEid());
		System.out.println(employee+"----------------------------------------------------------");
		req.setAttribute("employee", employee);
		RequestDispatcher rd = req.getRequestDispatcher("showEmployeprofile.jsp");
		rd.forward(req, resp);
	}
}
