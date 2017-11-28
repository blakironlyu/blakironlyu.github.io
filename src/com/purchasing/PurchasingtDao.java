package com.purchasing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Date;

import com.frame.Dao;
import com.frame.Sql;
import com.vo.Purchasing;
import com.vo.User;

public class PurchasingtDao<K,V> extends Dao<K, V> {

	@Override
	public void insert(Connection con, K obj) throws Exception {
		PreparedStatement pstmt = null;
		Purchasing p = (Purchasing)obj;
		try {
			pstmt = 
			con.prepareStatement(Sql.purHistory);
			/*pstmt.setInt(1, p.getHid());*/
			pstmt.setString(1, p.getuserid());
			pstmt.setInt(2, p.getPid());
//			pstmt.setDate(3, p.getPdate());			
			pstmt.executeUpdate();
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
		}
	}
	// 상품 아이디
	@Override
	public void delete(Connection con, V id) throws Exception {
		PreparedStatement pstmt = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.deleteHid);
			pstmt.setInt(1, 
					Integer.valueOf(id.toString()));
			pstmt.executeUpdate();
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
		}			
	}

	@Override
	public void update(Connection con, K obj) throws Exception {
		PreparedStatement pstmt = null;
		Purchasing p = (Purchasing)obj;
		try {
			pstmt = 
			con.prepareStatement(Sql.updateHid);
			pstmt.setInt(1, p.getHid());
			pstmt.setString(2, p.getuserid());
			pstmt.setInt(3, p.getPid());
			pstmt.setDate(4, p.getPdate());			
			pstmt.executeUpdate();
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
		}		
	}

	@SuppressWarnings("unchecked")
	@Override
	public K select(Connection con, V id) throws Exception {
		Purchasing p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.selectHid);
			pstmt.setInt(1, (int)id);
			rset = pstmt.executeQuery();
			rset.next();
			int hid = rset.getInt("HID");
			String userid = rset.getString("USERID");
			int pid = rset.getInt("PID");
			Date pdate = rset.getDate("PDATE");
			p = new Purchasing(hid, userid, pid ,pdate);
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
			close(rset);
		}					
		return (K)p;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<K> select(Connection con) throws Exception {
		ArrayList<Purchasing> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.selectallHid);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Purchasing p =null;
				int hid = rset.getInt("HID");
				String userid = rset.getString("USERID");
				int pid = rset.getInt("PID");
				Date pdate = rset.getDate("PDATE");
				p = new Purchasing(hid, userid, pid ,pdate);
				list.add(p);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
			close(rset);
		}					
		return (ArrayList<K>)list;
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<K> getPurhistory(Connection con, String uname) throws Exception {
		ArrayList<Purchasing> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.getPurhistory);
			pstmt.setString(1, uname);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Purchasing p =null;
				String name = rset.getString("PNAME");
				String imgname = rset.getString("IMGNAME");
				int price = rset.getInt("PRICE");
				
				int hid = rset.getInt("HID");
				String userid = rset.getString("USERID");
				int pid = rset.getInt("PID");
				Date pdate = rset.getDate("PDATE");
				p = new Purchasing(hid, userid, pid, pdate, name, price, imgname);
				list.add(p);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
			close(rset);
		}					
		return (ArrayList<K>)list;
	}
	
	
	public ArrayList<K> selectall(Connection con) throws Exception {
		ArrayList<Purchasing> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = 
			con.prepareStatement(Sql.selectallPUHid);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Purchasing p =null;
				int hid = rset.getInt("HID");
				String userid = rset.getString("USERID");
				int pid = rset.getInt("PID");
				Date pdate = rset.getDate("PDATE");
				String name = rset.getString("PNAME");
				int price = rset.getInt("PRICE");
				String imgname = rset.getString("IMGNAME");
				p = new Purchasing(hid, userid, pid ,pdate, name, price, imgname);
				list.add(p);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			close(pstmt);	
			close(rset);
		}					
		return (ArrayList<K>)list;
	}



}








