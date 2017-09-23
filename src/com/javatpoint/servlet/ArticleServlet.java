/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatpoint.servlet;

import com.javatpoint.bean.Article;
import com.javatpoint.dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;

public class ArticleServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");

		MultipartRequest multi = new MultipartRequest(request, "D:/project/MiniProjet-JEE/web/produitImages");
		String fname = multi.getFilesystemName("fname");
		fname = "produitImages/" + fname;

		try
		{

			// henry 取得接收request到的各參數 並分別給予變數
			String libelle = multi.getParameter("libelle");
			libelle = new String(libelle.getBytes("ISO-8859-1"), "UTF-8");// vince 多這句可以直接在後台顯示(打)中文
			String desc = multi.getParameter("desc");
			Double prix = Double.parseDouble(multi.getParameter("prix"));
			int quantite = Integer.parseInt(multi.getParameter("quantite"));

			Article act = new Article(libelle, desc, prix, quantite, fname);
			ArticleDao dao = new ArticleDao();
			// 執行新增產品
			if (dao.add(act))
			{ 
				response.sendRedirect("addfile-success.jsp");
			}
			else
			{
				response.sendRedirect("addfile-error.jsp");
			}

		}
		catch (Exception ex)
		{
			// henry 如捕獲異常則跳轉到錯誤頁面
			response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
	// + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo()
	{
		return "Short description";
	}// </editor-fold>

}
