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

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Retrieve form parameters
    	System.out.println("UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU");
        int id = Integer.parseInt(req.getParameter("eid"));
        String ename = req.getParameter("ename");
        String email = req.getParameter("email");
        String pword = req.getParameter("pword");
        
        // Create an Employee object with the updated details.
        Employee emp = new Employee();
        emp.setEid(id);
        emp.setEname(ename);
        emp.setEmail(email);
        emp.setPword(pword);
        System.out.println(emp);
        // Use the DAO to update the employee record.
        EmpDAO dao = new EmpDAO();
        boolean updated = dao.updateEmployee(emp);
        
        if(updated) {
            // On success, redirect to the employee list page.
        	System.out.println("++===++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            resp.sendRedirect("getuserdetails");
        } else {
            // On failure, set an error message and forward back to the edit page.
            req.setAttribute("error", "Failed to update employee. Please try again.");
            RequestDispatcher rd = req.getRequestDispatcher("employeeditpage.jsp");
            rd.forward(req, resp);
        }
    }
}
