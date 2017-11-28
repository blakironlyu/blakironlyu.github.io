package web.component;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.UserBiz;
import com.vo.User;

import web.dispatcher.Util;

@WebServlet({ "/RegisterServlet", "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserBiz<User, String> biz;
	
    public RegisterServlet() {
        super();
        biz = new UserBiz<>();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		name = Util.convertKr(name);
		String bdate = request.getParameter("bdate");
		String bdate2[] = bdate.split("-"); 
		Date date = new Date(Integer.parseInt(bdate2[0])-1900, Integer.parseInt(bdate2[1])-1, Integer.parseInt(bdate2[2]));
		
		try {
			biz.register(new User(uid, pwd, name, date));
			RequestDispatcher rd = request.getRequestDispatcher("main.4jo");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
