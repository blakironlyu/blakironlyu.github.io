package com.purchasing;

import java.util.ArrayList;

import com.vo.Product;
import com.vo.Purchasing;

public class Test {

	public static void main(String[] args) {
		PurchasingBiz<Purchasing, Integer> biz =
				new PurchasingBiz<>();
		Purchasing purchasing = new Purchasing("id01",1);
				
				
		try {
			biz.register(purchasing);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		try {
			biz.remove(104);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		ArrayList<Purchasing> list = null; 
		try {
			list = biz.get();
			for(Purchasing p : list) {
				System.out.println(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
//		for(int i=0;i<50;i++) {
//			Product p =
//			new Product(10+i, "¹ÙÁö"+i, 1000+i);
//			try {
//				Thread.sleep(100);
//				biz.register(p);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		} //end for
	}

}






