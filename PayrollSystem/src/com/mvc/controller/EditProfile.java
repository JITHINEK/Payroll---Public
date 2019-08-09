package com.mvc.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside EditProfile servlet!");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int pincode = Integer.parseInt(request.getParameter("pin"));
		
		long aadharNo = Long.parseLong(request.getParameter("aadhar"));
		long mobileNo = Long.parseLong(request.getParameter("mob"));
		
		String emailId = request.getParameter("mail");
		String addr = request.getParameter("addr");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		System.out.println(id);
		
		
		
	}

}
