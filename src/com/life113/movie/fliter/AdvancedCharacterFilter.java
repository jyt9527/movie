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
 * @date: 2018年12月3日 下午10:02:14
 * @WebFilter将一个实现了javax.servlet.Filte接口的类定义为过滤器组件 属性filterName声明过滤器的名称,可选
 *                                                 属性urlPatterns指定要过滤
 *                                                 的URL模式,也可使用属性value来声明.(指定要过滤的URL模式是必选属性)
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
