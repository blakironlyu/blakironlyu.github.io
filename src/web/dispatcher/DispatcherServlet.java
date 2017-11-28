package web.dispatcher;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/DispatcherServlet", "/dispatcher" })
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DispatcherServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		uri = uri.substring(uri.lastIndexOf("/"));
		String path = uri.substring(1, uri.lastIndexOf("."));
		String next = "theme/main.jsp";
		RequestDispatcher rd = null;
		if(path.equals("main")) {
			String view = request.getParameter("view");
			if(view != null) {
				if(view.equals("login")) {
					String id = request.getParameter("id");
					if(id != null) {
						next = "login";
					} else {
						next = "theme/login.jsp";
					}
				} else {
					build(request, view);
				}
			}
		} else {
			next = path;
		}
		
		rd = request.getRequestDispatcher(next);
		rd.forward(request, response);
	}

	private void build(HttpServletRequest request, String view) {
		switch(view) {
		case "register":
			request.setAttribute("center", "register");
			break;
		case "padd":
			request.setAttribute("center", "product/add");
			break;
		case "chart":
			request.setAttribute("center", "chart");
			break;
		case "modify":
			request.setAttribute("center", "mypage");
			break;
		}
		
	}

}
