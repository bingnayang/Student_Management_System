package com.student.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/DatabaseConnection")
public class DatabaseConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// Setup connection variables
			String user = "root";
			String pass = "password";
			
			String jdbcURL = "jdbc:mysql://localhost:3306/student_management?useSSL=false";
			String driver = "com.mysql.jdbc.Driver";
			
			// Get Connection to database
			try {
				PrintWriter out = response.getWriter();
				out.println("Connection to database: "+jdbcURL);
				Class.forName(driver);
				Connection conn = DriverManager.getConnection(jdbcURL,user,pass);
				out.println("Connect Success");
				conn.close();
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				throw new ServletException(e);
			}
		
	}


}
