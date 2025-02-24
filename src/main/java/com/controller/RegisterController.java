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

@WebServlet("/register")
public class RegisterController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("eid"));
		System.out.println("Registered Succesfully");
	
		String ename = req.getParameter("ename");
		String email = req.getParameter("email");
		String password = req.getParameter("pword");
		System.out.println(id);
		System.out.println(ename);
		System.out.println(email);
		System.out.println(password);

		Employee e = new Employee();
		e.setEid(id);
		e.setEname(ename);
		e.setEmail(email);
		e.setPword(password);
		System.out.println(e);
		
		EmpDAO ed=new EmpDAO();
		String status=ed.insertEmp(e);
		System.out.println(status);
		if(status.equals("Success")) {
			System.out.println("Data inserted succesfully");
		req.setAttribute("ename", ename);
			RequestDispatcher r=req.getRequestDispatcher("login.jsp");
			r.forward(req, resp);
		}else {
			System.out.println("Something went wrong!!");
			RequestDispatcher r=req.getRequestDispatcher("index.html");
			r.forward(req, resp);
		}
	}
}
