package org.young.carey.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


import org.young.carey.daoFactory.DAOFactory1;
import org.young.carey.entiy.Login;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		List errors = new ArrayList() ;

		String path = "view2/index.jsp" ;
		System.out.println(path);
		String name=request.getParameter("username");
		System.out.println("这是页面上的用户名："+name);
		String pwd=request.getParameter("password");
		System.out.println("这是页面上的密码："+pwd);
		
		Login lg=new Login();

		lg.setUsername(name);
		lg.setPassword(pwd);
		lg.setErrors(errors);

		boolean b=lg.invalidate();
		System.out.println("判断输入格式的真假"+b);
        //下面的判断为 如果输入的格式合法，那么我们进行数据库端得验证
		if(b){
			if(DAOFactory1.getLoginDAOInstance().isLogin(lg)){
				System.out.println("进行数据库端得判断***********");
				path="view2/success.jsp";
			}else{
				errors.add("错误的用户名和密码！");
			}
		}
		request.setAttribute("Error", errors);
		request.setAttribute("Lg", lg);
		//request.getRequestDispatcher(path)
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
