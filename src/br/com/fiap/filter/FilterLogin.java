package br.com.fiap.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.model.Usuario;

@WebFilter("/*")
public class FilterLogin implements Filter{
	
	public FilterLogin() {
		super();
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
        HttpServletRequest req = (HttpServletRequest) request;
        RequestDispatcher dispatcher = req.getRequestDispatcher("/");
        
        HttpSession session = req.getSession();
		Usuario usuario = (Usuario) session.getAttribute("session_usuario");
		
		if (usuario == null) {
			if (req.getServletPath().equals("/")) {
				dispatcher.forward(request, response);
			}
		}
		
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
}