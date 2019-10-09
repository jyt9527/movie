package com.life113.movie.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.life113.movie.Pojo.Information;
import com.life113.movie.Service.InformationService;
import com.life113.movie.ServiceImpl.InformationServiceImpl;

/**
 * Servlet implementation class ShowInformation
 */
@WebServlet("/ShowInformation")
public class ShowInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowInformation() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session = request.getSession();

		InformationService inforService = new InformationServiceImpl();

		List<Information> inforList = inforService.getInformations();
		List<Information> inforList_New = inforService.getPagination_New();
		List<Information> inforList_Chinese = inforService.getPagination_Chinese();
		List<Information> inforList_KKC = inforService.getPagination_KKC();
		List<Information> inforList_Occident = inforService.getPagination_Occident();
		List<Information> inforList_filmReview = inforService.getPagination_filmReview();

		ServletContext context = this.getServletContext();

		// 将信息存入ServletContext对象
		session.setAttribute("inforList", inforList);
		session.setAttribute("inforList_New", inforList_New);
		session.setAttribute("inforList_Chinese", inforList_Chinese);
		session.setAttribute("inforList_KKC", inforList_KKC);
		session.setAttribute("inforList_Occident", inforList_Occident);
		session.setAttribute("inforList_filmReview", inforList_filmReview);
		// 页面跳转
		response.sendRedirect("xpages/movie/index.jsp");

	}

}
