package com.life113.movie.fliter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * @ClassName: AdvancedCharacterFilter
 * @Description: TODO
 * @author: JYT
 * @date: 2018��12��3�� ����10:02:14
 * @WebFilter��һ��ʵ����javax.servlet.Filte�ӿڵ��ඨ��Ϊ��������� ����filterName����������������,��ѡ
 *                                                 ����urlPatternsָ��Ҫ����
 *                                                 ��URLģʽ,Ҳ��ʹ������value������.(ָ��Ҫ���˵�URLģʽ�Ǳ�ѡ����)
 */

@WebFilter(filterName = "encodingFilter", urlPatterns = "/*")
public class AdvancedCharacterFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("--doFilter() work!");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {

	}
}
