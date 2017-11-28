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
		
		if(cmd.equals("list")) {			// Ư�� ī�װ�/ī�װ��� ��ǰ���� �ҷ�����
			String category = request.getParameter("category");	// Ư�� ī�װ�
			String pname = request.getParameter("pname");		// ī�װ��� ��ǰ ����
			//pname = engToKor(pname);
			ArrayList<Product> list = null;
			
			if(category == null && pname == null) {	// ��ü ��ǰ
				//continue;
			} else if(category != null) {		// Ư�� ī�װ�
				try {
					list = biz.selectCategory(category);
					request.setAttribute("list", list);
					request.setAttribute("category", category);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {							// Ư�� ��ǰ
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
		} else if(cmd.equals("add")) {		// ��ǰ �߰�
			/*��ǰid (������, Ű)    PID
			��ǰ��                       PNAME
			����                           PRICE
			�����                       REGDATE
			����                           IMG
			ī�װ�                   CATEGORY*/
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
			result = "����";
			break;
		case "coat":
			result = "��Ʈ";
			break;
		case "knit":
			result = "��Ʈ";
			break;
		case "tshirt":
			result = "Ƽ����";
			break;
		case "hoody":
			result = "�ĵ�Ƽ";
			break;
		case "slacks":
			result = "������";
			break;
		case "jean":
			result = "û����";
			break;
		case "skirt":
			result = "ġ��";
			break;
		case "onepiece":
			result = "���ǽ�";
			break;
		case "flat":
			result = "�÷�";
			break;
		case "heel":
			result = "����";
			break;
		case "sneakers":
			result = "�ȭ";
			break;
		case "scarf":
			result = "��ī��";
			break;
		case "jewelry":
			result = "���";
			break;
		default:
		}
		return result;
	}
}
