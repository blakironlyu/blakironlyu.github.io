package web.component;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.UserBiz;
import com.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserBiz<User, String> biz;
	
    public LoginServlet() {
        super();
        biz = new UserBiz<>();
    }
    
    // logout
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		HttpSession session = request.getSession();
   		if(session != null) {
   			session.invalidate();	// session에 있는 값 없애기
   			response.sendRedirect("main.4jo");
   		}
   	}

   	// login
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		String id = request.getParameter("id");
   		String pwd = request.getParameter("pwd");
   		User user = null;
   		RequestDispatcher rd = null;
   		String next = "main.4jo";
   		
   		try {
   			user = biz.get(id);
   			if(pwd.equals(user.getPwd())) {
   				// Login Success
   				HttpSession session = request.getSession();	// 브라우저가 살아있는 동안 유지됨
   				session.setAttribute("loginuser", user);
   			} else {
   				// Login Failed (비밀번호 다름)
   			}
   		} catch (Exception e) {
   			// Login Failed (아이디 존재하지 않음)
   		}
   		response.sendRedirect(next);
   	}
}
