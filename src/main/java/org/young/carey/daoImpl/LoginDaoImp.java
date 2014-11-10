package org.young.carey.daoImpl;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.young.carey.dao.*;
import org.young.carey.entiy.Login;
import org.young.carey.dbConnection.*;

public class LoginDaoImp  implements LoginDao {


	public boolean isLogin(Login lg) {
		boolean flag = false;

		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = null;
		MysqlConnection mc = new MysqlConnection();
	    sql = "select username,password from login where username=? and password=?";
		try {
			System.out.println("这是要用到的sql………………："+sql);
			
			pstm=mc.getConnection().prepareStatement(sql);
			
			System.out.println("@@@@@@@@要查询的用户名："+lg.getUsername());
			
			pstm.setString(1, lg.getUsername());
			pstm.setString(2, lg.getPassword());
			
			rs = pstm.executeQuery();
			
			if (rs.next()) {
				flag = true;
				lg.setUsername(rs.getString("username"));
			}
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} 

		return flag;
	}
	
}
