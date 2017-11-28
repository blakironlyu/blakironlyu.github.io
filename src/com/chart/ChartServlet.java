package com.chart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.purchasing.PurchasingBiz;
import com.vo.Product;
import com.vo.Purchasing;

/**
 * Servlet implementation class ChartServlet
 */
@WebServlet({ "/ChartServlet", "/chart" })
public class ChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    PurchasingBiz<Purchasing, Integer> biz;
    public ChartServlet() {
        super();
        biz = new PurchasingBiz<>(); 
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		String next = "main.4jo";
		RequestDispatcher rd = null;
		
		if(cmd.equals("chart")) {
			next = "chart.html";
		} else if(cmd.equals("get")) {
			ArrayList<Purchasing> list = null;
			try {
				JSONArray ja = new JSONArray(); // JSON 배열
				list = biz.getall(); // pdate, productnm, count / PDATE, PRODUCT_NM, COUNT
				for(Purchasing p : list) {
				}
				for (int i = 0; i < list.size(); i++) {
					Purchasing p = list.get(i);
					if(p.getName() == null) continue;	// 임시!!!!!
					JSONObject jo = new JSONObject(); // JSON Object. ArrayList에 있는 Product를 여기에 넣고 jo를 ja에 넣기.
					LinkedList<Integer> data = new LinkedList<>();
					for (int j = 0; j < 12; j++) {
						data.add(0);
					}
					// for(Product r: list) {
					for (int l = i; l < list.size(); l++) {
						Purchasing r = list.get(l);
						if(r.getPdate() == null || r.getName() == null) continue;
						if (r.getName().trim().equals(p.getName().trim())) {
							int month = r.getPdate().getMonth();
							int k = data.get(month);
							data.set(month, k+1);
							if(i != l) {
								list.remove(l);
								l--;
							}
						}
					}
					jo.put("name", p.getName());// ja에 jo 넣기
					jo.put("data", data);
					ja.add(jo);
					//list.remove(i);
				}
				response.setContentType("text/json;charset=utf-8"); // json, 한국어로 설정
				PrintWriter out = response.getWriter();
				out.print(ja.toJSONString()); // ja를 String으로 바꾸기.
				out.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		rd = request.getRequestDispatcher(next);
		rd.forward(request, response);
	}

}
