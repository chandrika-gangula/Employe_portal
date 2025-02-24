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

@WebServlet("/getuserdetailsforedit")
public class EditController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Employee e=(Employee)session.getAttribute("user");
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
		EmpDAO dao=new EmpDAO();
		Employee employee = dao.getemployebyid(e.getEid());
		req.setAttribute("employee", employee);
		RequestDispatcher rd = req.getRequestDispatcher("Employeeditpage12.jsp");
		rd.forward(req, resp);
	}
}
