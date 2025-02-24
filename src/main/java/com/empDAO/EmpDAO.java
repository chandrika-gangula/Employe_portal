package com.empDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Employee;

public class EmpDAO {
	Connection con;
	String status="fail";
public String insertEmp(Employee e) {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
		PreparedStatement ps=con.prepareStatement("insert into employe(ename,email,pword) values(?,?,?)");
		ps.setString(1,e.getEname());
		ps.setString(2,e.getEmail());
		ps.setString(3,e.getPword());
		int n=ps.executeUpdate();
		if(n>0) {
			status="Success";	
		}else {
			System.out.println("failure");
		}
	}catch(Exception e1) {
		System.out.println(e1);
	}
	
	return status;
	
}

		public Employee valid(String email,String ps) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
				PreparedStatement ps1=con.prepareStatement("select * from employe where  email=? and pword=?");
                 ps1.setString(1, email);
                 ps1.setString(2, ps);
                 
                 ResultSet rs=ps1.executeQuery();
                 
                 while(rs.next()) {
                 	 return new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                 }
                 
			} catch (Exception e) {
				System.out.println(e);
			}
			
				return null ;
			
		}
		
		
		public  List<Employee> getAllemp(){
			List<Employee> list= new ArrayList<Employee>();
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
				PreparedStatement ps2=con.prepareStatement("select * from employe");
                 ResultSet rs=ps2.executeQuery();
                 while(rs.next()) {
                	 Employee e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                    list.add(e);
                 }
                 
			}catch(Exception e) {
				System.out.println(e);
			}
			
			return list;
			
		}
		public boolean deletebyid(int id) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
				PreparedStatement ps2=con.prepareStatement("delete from employe where eid=?");
				ps2.setInt(1, id);
                int rs=ps2.executeUpdate();
                 if(rs>0) {
                	 return true;
                 }
			}catch(Exception e) {
				System.out.println(e);
			}
			return false;
		}
		public  Employee getemployebyid(int id){
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
				PreparedStatement ps2=con.prepareStatement("select * from employe where  eid=?");
				ps2.setInt(1, id);
                 ResultSet rs=ps2.executeQuery();
                 while(rs.next()) {
                	 return  new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                 
                 }
                 
			}catch(Exception e) {
				System.out.println(e);
			}
			
			return null;
			
		}

		public boolean updateEmployee(Employee emp) {
	        String sql = "UPDATE employe SET ename = ?, email = ?, pword = ? WHERE eid = ?";
	        try {
	        	  
					Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
	             PreparedStatement ps = con.prepareStatement(sql);
	             
	            ps.setString(1, emp.getEname());
	            ps.setString(2, emp.getEmail());
	            ps.setString(3, emp.getPword());
	            ps.setInt(4, emp.getEid());
	            
	            int rowsAffected = ps.executeUpdate();
	            System.out.println(rowsAffected+"-------------------------------");
	            return rowsAffected > 0;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
}
