	package com.mvc.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.mvc.bean.AddEmpBean;
import com.mvc.util.DBConnection;

public class AdminDao {
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	Statement stmt = null;
	
		public int addEMP(AddEmpBean addEmpBean) {
			
			System.out.println(addEmpBean.getName());
			try {
				con = DBConnection.createConnection();
				ps = con.prepareStatement("insert all into emp_tb(id,name,emai_id,joining_date,emp_dept,role,designation,tire_no)values(?,?,?,?,?,?,?,?) into user_tb(emp_id,user_name,passwd) values(?,?,?) into addr_tb(emp_id,addr,city,state,pin) values(?,null,null,null,null) into attendence_tb(emp_id,attendence,month) values(?,null,null) into bank_tb(emp_id,bank_name,acc_no,ifsc_code) values(?,null,null,null) into emp_rating(emp_id,emp_rating,date_of_issue) values (?,null,null) into personaldetails_tb(emp_tb,adhar_no,pan_no,passport_no,ph_no) values (?,null,null,null,null) select * from dual");
				
				ps.setInt(1, addEmpBean.getId());
				ps.setString(2, addEmpBean.getName());
				ps.setString(3, "null");
				ps.setDate(4, addEmpBean.getDateOfJoin());
				ps.setString(5, addEmpBean.getDept());
				ps.setInt(6, addEmpBean.getRoll());
				ps.setString(7, addEmpBean.getDesig());
				ps.setInt(8, addEmpBean.getTire_no());
				
				ps.setInt(9,addEmpBean.getId());
				ps.setString(10, addEmpBean.getUserName());
				ps.setString(11, addEmpBean.getPasswd());
				
				ps.setInt(12, addEmpBean.getId());
				ps.setInt(13, addEmpBean.getId());
				ps.setInt(14, addEmpBean.getId());
				ps.setInt(15, addEmpBean.getId());
				ps.setInt(16, addEmpBean.getId());
				resultSet = ps.executeQuery();
			}catch(Exception e) {
				System.out.println("Admindao catch");
				System.out.println(e);
			}
			
			return 1;
			
		}
		
		public ResultSet empList() {
			
			String Query = "select id,name,emai_id,joining_date,emp_dept,designation,tire_no from emp_tb";
			try {
				con = DBConnection.createConnection();
				stmt = con.createStatement();
				resultSet = stmt.executeQuery(Query);
			}catch(Exception e) {
				System.out.println("empList catch");
				System.out.println(e);
			}
			return resultSet;
		}
}
