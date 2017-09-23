package com.javatpoint.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javatpoint.bean.User;
import com.javatpoint.dao.UserDao;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    protected void AddUserServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String name = request.getParameter("name");
    	name =  new String(name.getBytes(), "utf-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String country = request.getParameter("country");
      
        User act = new User(name, email, password, sex, country);
        UserDao dao = new UserDao();
        
        if(dao.save(act))
        {
            //如新增成功則跳轉成功頁面
            response.sendRedirect("http://localhost:8080/JSPCrud/adduser-success.jsp");
        }else
        {
            //如新增成功則跳轉失敗頁面
            response.sendRedirect("http://localhost:8080/JSPCrud/adduser-error.jsp");
        }
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AddUserServlet(request, response);
	}





	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AddUserServlet(request, response);
	}

}
