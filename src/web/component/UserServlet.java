package web.component;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.UserBiz;
import com.vo.User;

import web.dispatcher.Util;

@WebServlet({ "/UserServlet", "/user" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserBiz<User, String> biz;
    
    public UserServlet() {
        super();
        biz = new UserBiz<>();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		RequestDispatcher rd = null;
		String next = "main.4jo";
		
		if(cmd.equals("list")) {		// 유저 리스트
			ArrayList<User> list = null;
			try {
				list = biz.get();
				request.setAttribute("center", "user/list");
				request.setAttribute("list", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("modify")) {		// 유저 정보 수정
			String id = request.getParameter("uid");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			name = Util.convertKr(name);
			String bdate = request.getParameter("bdate");
			String bdate2[] = bdate.split("-"); 
			Date date = new Date(Integer.parseInt(bdate2[0])-1900, Integer.parseInt(bdate2[1])-1, Integer.parseInt(bdate2[2]));
			User user = new User(id, pwd, name, date);
			try {
				biz.modify(user);
				HttpSession session = request.getSession();	// 브라우저가 살아있는 동안 유지됨
				session.removeAttribute("loginuser");
   				session.setAttribute("loginuser", user);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		rd = request.getRequestDispatcher(next);
		rd.forward(request, response);
	}

}
