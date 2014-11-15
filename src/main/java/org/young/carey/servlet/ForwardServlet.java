package org.young.carey.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForwardServlet
 */
public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForwardServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		//if((request.getParameter(name)!=null) && (request.getParameter(pwd)!=null)){
			if((name!=null && !name.equals("")) && (pwd!=null && !pwd.equals(""))){
				if (name.equals("carey") && pwd.equals("young")) {
					request.getRequestDispatcher("web/web1.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("web/web2.jsp").forward(request, response);
				}	
			}else {
				request.getRequestDispatcher("").forward(request, response);
			}
		
		
		
		
		
		
	}

}
