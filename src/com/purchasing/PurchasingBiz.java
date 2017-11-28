package com.purchasing;

import java.sql.Connection;
import java.util.ArrayList;

import com.frame.Biz;
import com.vo.User;

public class PurchasingBiz<T, V> extends Biz<T, V> {

	PurchasingtDao<T, V> dao;

	public PurchasingBiz() {
		dao = new PurchasingtDao<>();
	}

	@Override
	public void register(T obj) throws Exception {
		Connection con = getConnection();
		try {
			dao.insert(con, obj);
			con.commit();
		} catch (Exception e) {
			con.rollback();
			throw e;
		} finally {
			close(con);
		}
	}

	@Override
	public void remove(V id) throws Exception {
		Connection con = getConnection();
		try {
			dao.delete(con, id);
			con.commit();
		} catch (Exception e) {
			con.rollback();
			throw e;
		} finally {
			close(con);
		}
	}

	@Override
	public void modify(T obj) throws Exception {
		Connection con = getConnection();
		try {
			dao.update(con, obj);
			con.commit();
		} catch (Exception e) {
			con.rollback();
			throw e;
		} finally {
			close(con);
		}
	}

	@Override
	public T get(V id) throws Exception {
		T product = null;
		Connection con = getConnection();
		try {
			product = dao.select(con, id);
		} catch (Exception e) {
			throw e;
		} finally {
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
		} catch (Exception e) {
			throw e;
		} finally {
			close(con);
		}
		return list;
	}
	
	public ArrayList<T> getall() throws Exception {
		ArrayList<T> list = null;
		Connection con = getConnection();
		try {
			list = dao.selectall(con);
		} catch (Exception e) {
			throw e;
		} finally {
			close(con);
		}
		return list;
	}

	
	public ArrayList<T> getPurhistory(String name) throws Exception {
		ArrayList<T> list = null;
		Connection con = getConnection();
		try {
			list = dao.getPurhistory(con, name);
		} catch (Exception e) {
			throw e;
		} finally {
			close(con);
		}
		return list;
	}

}
