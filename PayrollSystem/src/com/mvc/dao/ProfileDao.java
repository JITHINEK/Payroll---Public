package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.util.DBConnection;

public class ProfileDao {
	
	Connection con = null;
	PreparedStatement ps = null;
	Statement stmt = null;
	
	public ResultSet[] profile(int id) {
		
		String pDQuery = "select name,id,emai_id,joining_date from emp_tb where emp_tb.id=?";
		String idenQuery = "select adhar_no,pan_no,ph_no from personaldetails_tb where emp_id = ?";
		String condQuery = "select addr,city,state,pin from addr_tb where emp_id = ?";
		
		ResultSet[] resultSet = new ResultSet[3];
		
		try {
			con = DBConnection.createConnection();
			ps = con.prepareStatement(pDQuery);
			ps.setLong(1,id);
			resultSet[0] = ps.executeQuery();
			ps = con.prepareStatement(idenQuery);
			ps.setLong(1, id);
			resultSet[1] = ps.executeQuery();
			ps = con.prepareStatement(condQuery);
			ps.setLong(1, id);
			resultSet[2] = ps.executeQuery();
			
			return resultSet;
		}
		catch (SQLException e) {
			System.out.println("doa catch");
			e.printStackTrace();
		}
		return resultSet;
	}
	public ResultSet IdentificationProfileEdit(int id) {
		
		ResultSet resultSet = null;
		
		
		
		return resultSet;
	}
}
