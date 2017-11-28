package com.product;

import java.util.ArrayList;

import com.vo.Product;

public class Test {

	public static void main(String[] args) {
		ProductBiz<Product, Integer> biz =
				new ProductBiz<>();
//		Product product = 
//		new Product("바지", 10000, "img99.jpg");
//		try {
//			biz.register(product);
//		} catch (Exception e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		
		try {
			biz.remove(124);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		
		ArrayList<Product> list = null; 
		try {
			list = biz.get();
			for(Product p : list) {
				System.out.println(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
//		for(int i=0;i<50;i++) {
//			Product p =
//			new Product(10+i, "바지"+i, 1000+i);
//			try {
//				Thread.sleep(100);
//				biz.register(p);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		} //end for
	}

}






