package com.controller;

import java.io.IOException;
import java.util.List;

import com.empDAO.EmpDAO;
import com.model.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListofEmp")
public class ListofEmp extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("helloo ListofEmp controller");

		EmpDAO e = new EmpDAO();
		List<Employee> allemp=e.getAllemp();
		System.out.println(allemp);
		
		req.setAttribute("allemp", allemp);
		RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		rd.forward(req, resp);
		
	}

}
