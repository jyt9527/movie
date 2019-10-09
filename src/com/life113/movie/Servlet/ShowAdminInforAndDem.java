package com.life113.movie.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.life113.movie.Pojo.Demand;
import com.life113.movie.Pojo.Information;
import com.life113.movie.Service.DemandService;
import com.life113.movie.Service.InformationService;
import com.life113.movie.ServiceImpl.DemandServiceImpl;
import com.life113.movie.ServiceImpl.InformationServiceImpl;

/**
 * Servlet implementation class ShowInformations
 */
@WebServlet("/ShowAdminInforAndDem")
public class ShowAdminInforAndDem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowAdminInforAndDem() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		InformationService inforService = new InformationServiceImpl();
		DemandService demandService = new DemandServiceImpl();
		List<Demand> demandList = demandService.getAllDemand();
		List<Information> inforList = inforService.getInformations();
		session.setAttribute("demList", demandList);
		session.setAttribute("inforList", inforList);
		// Ò³ÃæÌø×ª
		response.sendRedirect("xpages/movie/admin/ManageInformation.jsp");
	}

}
