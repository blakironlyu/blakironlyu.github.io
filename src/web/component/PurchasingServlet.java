package web.component;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.purchasing.PurchasingBiz;
import com.vo.Purchasing;
import com.vo.User;

@WebServlet({ "/PurchasingServlet", "/purchasing" })
public class PurchasingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PurchasingBiz<Purchasing, Integer> biz;
    
    public PurchasingServlet() {
        super();
        biz = new PurchasingBiz<>();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
    	RequestDispatcher rd = null;
    	String next = "theme/main.jsp";
    	
    	if(cmd.equals("list")) {		// 특정 유저의 구매 내역
    		String userid = request.getParameter("id");
    		if(userid == null) {
    			User user = (User)request.getSession().getAttribute("loginuser");
    			userid = user.getId();
    		}
    		ArrayList<Purchasing> list = null;
    		try {
    			
    			list = biz.getPurhistory(userid);
    			request.setAttribute("list", list);
    			request.setAttribute("center", "purchasing/list");
			} catch (Exception e) {
				e.printStackTrace();
			}
    		request.setAttribute("center", "purchasing/list");
    	} else if(cmd.equals("add")) {
    		HttpSession session = request.getSession();
    		User user = (User) session.getAttribute("loginuser");		//user 정보
    		String uid = user.getId();
    		int pid = Integer.parseInt(request.getParameter("pid"));	//구입할 상품 id
    		Purchasing p = new Purchasing(uid, pid);
    		try {
    			biz.register(p);
    			request.setAttribute("id", uid);
    			next = "purchasing.4jo?cmd=list";
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	rd = request.getRequestDispatcher(next);
    	rd.forward(request, response);
	}

}
