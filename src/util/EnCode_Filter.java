package util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017/11/21.
 */
public class EnCode_Filter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {

    }
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        // 注意这里请求和响应都强制转化了一下
        request.setCharacterEncoding("UTF-8");	//设置请求编码“UTF-8”比较通用
        response.setCharacterEncoding("UTF-8");	//设置相应编码
        filterChain.doFilter(servletRequest, servletResponse);//转发请求
    }
    public void destroy() {

    }
}

