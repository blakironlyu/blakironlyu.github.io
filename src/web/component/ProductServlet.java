package web.component;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.product.ProductBiz;
import com.vo.Product;

import web.dispatcher.Util;

@WebServlet({ "/ProductServlet", "/product" })
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductBiz<Product, Integer> biz;
	int size = 1024*1024*1024;
	String dir = "C:\\jsp\\shop\\web\\img";
	MultipartRequest mr;
	
    public ProductServlet() {
        super();
        biz = new ProductBiz<>();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd");
		String next = "theme/main.jsp";
		RequestDispatcher rd = null;
		
		if(cmd.equals("list")) {			// 특정 카테고리/카테고리내 상품종류 불러오기
			String category = request.getParameter("category");	// 특정 카테고리
			String pname = request.getParameter("pname");		// 카테고리내 상품 종류
			//pname = engToKor(pname);
			ArrayList<Product> list = null;
			
			if(category == null && pname == null) {	// 전체 상품
				//continue;
			} else if(category != null) {		// 특정 카테고리
				try {
					list = biz.selectCategory(category);
					request.setAttribute("list", list);
					request.setAttribute("category", category);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {							// 특정 상품
				try {
					list = biz.getProduct(pname);
					request.setAttribute("list", list);
					request.setAttribute("pname", pname);
					request.setAttribute("category", list.get(0).getCategory());
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			request.setAttribute("center", "category");
		} else if(cmd.equals("add")) {		// 상품 추가
			/*상품id (시퀀스, 키)    PID
			상품명                       PNAME
			가격                           PRICE
			등록일                       REGDATE
			사진                           IMG
			카테고리                   CATEGORY*/
			mr = new MultipartRequest(request, dir, size, "utf-8");
			String category = mr.getParameter("category");
			String pname = mr.getParameter("pname");
			pname = Util.convertKr(pname);
			int price = Integer.parseInt(mr.getParameter("price"));
			String img = mr.getOriginalFileName("img");
			
			Product p = new Product(pname, price, img, category);
			try {
				biz.register(p);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		rd = request.getRequestDispatcher(next);
		rd.forward(request, response);
	}

	public String engToKor(String name) {
		String result = "";
		switch(name) {
		case "jacket":
			result = "자켓";
			break;
		case "coat":
			result = "코트";
			break;
		case "knit":
			result = "니트";
			break;
		case "tshirt":
			result = "티셔츠";
			break;
		case "hoody":
			result = "후드티";
			break;
		case "slacks":
			result = "슬랙스";
			break;
		case "jean":
			result = "청바지";
			break;
		case "skirt":
			result = "치마";
			break;
		case "onepiece":
			result = "원피스";
			break;
		case "flat":
			result = "플랫";
			break;
		case "heel":
			result = "구두";
			break;
		case "sneakers":
			result = "운동화";
			break;
		case "scarf":
			result = "스카프";
			break;
		case "jewelry":
			result = "쥬얼리";
			break;
		default:
		}
		return result;
	}
}
