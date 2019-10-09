package com.life113.movie.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class AdminManageInformation
 */
@WebServlet("/AdminManageInforAndDem")
public class AdminManageInforAndDem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminManageInforAndDem() {
		super();

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
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		InformationService inforService = new InformationServiceImpl();
		DemandService demandService = new DemandServiceImpl();
		String operator = request.getParameter("operator");
		if ("add".equals(operator)) {
			Information infor = new Information();
			infor.setPagination(request.getParameter("add_Pagination"));
			infor.setHeadline(request.getParameter("add_Headline"));
			infor.setHeadline_url(request.getParameter("add_Headline_url"));
			infor.setPhoto(request.getParameter("add_Photo"));

			infor.setBrief(request.getParameter("add_Brief"));
			infor.setView(request.getParameter("add_Headline_url"));
			infor.setComment(request.getParameter("add_Comment"));
			inforService.add_Information(infor);
			// response.sendRedirect("xpages/movie/admin/ManageInformation.jsp");
			request.getRequestDispatcher("ShowAdminInforAndDem").forward(request, response);
		}
		if ("edit".equals(operator)) {
			out.print("由于不好安排界面，编辑功能还未实现，有待开发，您可以用新建信息和删除信息来替代修改信息");
			int id = Integer.parseInt(request.getParameter("id"));
			Information information = inforService.getOneInformationById(id);
			request.setAttribute("infor", information);
			request.getRequestDispatcher("xpages/movie/admin/updateInformation.jsp").forward(request, response);
		}
		if ("delete".equals(operator)) {
			int id = Integer.parseInt(request.getParameter("id"));
			Information information = inforService.getOneInformationById(id);
			inforService.delete_Information(information);
			// response.sendRedirect("xpages/movie/admin/ManageInformation.jsp");
			request.getRequestDispatcher("ShowAdminInforAndDem").forward(request, response);
		}

		if ("demandDelete".equals(operator)) {
			int id = Integer.parseInt(request.getParameter("demId"));
			Demand demand = demandService.getOneDemandById(id);
			demandService.deleteDemand(demand);
			request.getRequestDispatcher("ShowAdminInforAndDem").forward(request, response);
		}
		if ("save".equals(operator)) {
			int id = Integer.parseInt(request.getParameter("id"));
			Information information = inforService.getOneInformationById(id);
			information.setPagination(request.getParameter("Pagination"));
			information.setHeadline(request.getParameter("Headline"));
			information.setHeadline_url(request.getParameter("Headline_url"));
			information.setBrief(request.getParameter("Brief"));

			int m = inforService.save_Information(information);

			if (m > 0) {
				request.setAttribute("msg", "保存成功");
				request.setAttribute("infor", information);
			} else {
				request.setAttribute("msg", "保存失败");
				request.setAttribute("infor", inforService.getOneInformationById(id));
			}
			// 先提示保存成功，之后按返回跳到主页
			request.getRequestDispatcher("xpages/movie/admin/updateInformation.jsp").forward(request, response);

		}
	}

}
