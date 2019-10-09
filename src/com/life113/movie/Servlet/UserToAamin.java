package com.life113.movie.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.life113.movie.Pojo.Demand;
import com.life113.movie.Service.DemandService;
import com.life113.movie.ServiceImpl.DemandServiceImpl;

/**
 * Servlet implementation class UserToAamin
 */
@WebServlet("/UserToAamin")
public class UserToAamin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserToAamin() {
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
		DemandService demandService = new DemandServiceImpl();
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		Demand demand = new Demand();
		String userDemand = request.getParameter("demand");
		// dem.setUserName(userName);
		demand.setUserDemand(userDemand);
		demand.setDate(new Date(System.currentTimeMillis()));
		demandService.saveDemand(demand);
		session.setAttribute("Demand", userDemand);
		out.println("<script langue='javascript'>alert('提交问题成功,请敬请期待！');location='xpages/movie/index.jsp';</script>");

	}

}
