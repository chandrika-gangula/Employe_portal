package com.controller;

import java.io.IOException;

import com.empDAO.EmpDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deletebyid")
public class DeleteController  extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		System.out.println(id+"-----------");
		
		EmpDAO d=new EmpDAO();
		boolean flag = d.deletebyid(id);
		if(flag) {
			RequestDispatcher r=req.getRequestDispatcher("ListofEmp");
			r.forward(req, resp);
		}
		else {
			RequestDispatcher red = req.getRequestDispatcher("ListofEmp");
			red.forward(req, resp);
		}
	
	}

}
