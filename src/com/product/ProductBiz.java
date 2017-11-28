package com.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.frame.Biz;
import com.frame.Sql;
import com.vo.Product;
import com.vo.User;

public class ProductBiz<T,V> extends Biz<T, V> {

	ProductDao<T,V> dao;
	
	public ProductBiz() {
		dao = new ProductDao<>();
	}
	
	@Override
	public void register(T obj) throws Exception {
		Connection con = getConnection();
		try {
			dao.insert(con, obj);
			con.commit();
		}catch(Exception e) {
			con.rollback();
			throw e;
		}finally {
			close(con);
		}
	}

	@Override
	public void remove(V id) throws Exception {
		Connection con = getConnection();
		try {
			dao.delete(con, id);
			con.commit();
		}catch(Exception e) {
			con.rollback();
			throw e;
		}finally {
			close(con);
		}		
	}

	@Override
	public void modify(T obj) throws Exception {
		Connection con = getConnection();
		try {
			dao.update(con, obj);
			con.commit();
		}catch(Exception e) {
			con.rollback();
			throw e;
		}finally {
			close(con);
		}		
	}

	@Override
	public T get(V id) throws Exception {
		T product = null;
		Connection con = getConnection();
		try {
			product = dao.select(con, id);
		}catch(Exception e) {
			throw e;
		}finally {
			close(con);
		}
		return product;
	}

	@Override
	public ArrayList<T> get() throws Exception {
		ArrayList<T> list = null;
		Connection con = getConnection();
		try {
			list = dao.select(con);
		}catch(Exception e) {
			throw e;
		}finally {
			close(con);
		}
		return list;
	}

	public ArrayList<T> selectCategory(String name) throws Exception {
	      ArrayList<T> list = null;
	      Connection con = getConnection();
	      try {
	         list = dao.selectCategory(con, name);
	      }catch(Exception e) {
	         throw e;
	      }finally {
	         close(con);
	      }
	      return list;
	   }
	
	public ArrayList<T> getProduct(String name) throws Exception {
	      ArrayList<T> list = null;
	      Connection con = getConnection();
	      try {
	         list = dao.getProduct(con, name);
	      }catch(Exception e) {
	         throw e;
	      }finally {
	         close(con);
	      }
	      return list;
	   }
	
	

	





}










