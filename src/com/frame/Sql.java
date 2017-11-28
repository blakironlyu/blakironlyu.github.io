package com.frame;

public class Sql {
	public static String insertUser = 
	"INSERT INTO T_USER VALUES(?,?,?,?)";
	public static String deleteUser = 
	"DELETE FROM T_USER WHERE USERID=?";
	public static String updateUser = 
	"UPDATE T_USER SET PWD=?,NAME=?,BDATE=? WHERE USERID=?";
	public static String selectUser = 
	"SELECT * FROM T_USER WHERE USERID=?";
	public static String selectallUser = 
	"SELECT * FROM T_USER";		
	
	public static String insertProduct = 
	"INSERT INTO T_PRODUCT VALUES(product_sqe.nextval,?,?,SYSDATE,?,?)";
	/*"CREATE SEQUENCE SQE START WITH 100 INCREAMENT BY 1";*/
	public static String deleteProduct = 
	"DELETE FROM T_PRODUCT WHERE PID=?";
	public static String updateProduct = 
	"UPDATE T_PRODUCT SET PNAME=?,PRICE=?,IMGNAME=?,CATEGORY=? WHERE PID=?";
	public static String selectProduct = 
	"SELECT * FROM T_PRODUCT WHERE PID=?";
	public static String selectallProduct = 
	"SELECT * FROM T_PRODUCT";	

	public static String purHistory =
	"INSERT INTO T_PURHISTORY VALUES(purhistory_sqe.nextval,?,?,SYSDATE)";
	public static String deleteHid =
	"DELETE FROM T_PURHISTORY WHERE HID=?";
	public static String updateHid =
	"UPDATE FROM T_PURHISTORY SET USERID=?,PID=?,PDATE=? WHERE HID=?";
	public static String selectHid = 
	"SELECT * FROM T_PURHISTORY WHERE HID=?";
	public static String selectallHid = 
	"SELECT * FROM T_PURHISTORY";
	public static String selectallPUHid = 
	"SELECT * FROM T_PURHISTORY H LEFT JOIN T_PRODUCT P ON H.PID = P.PID";
	
	/*1. 카테고리 지정해서 상품 가져오기*/
	public static String selectCategory =
	"SELECT * FROM T_PRODUCT WHERE CATEGORY = ?";			
						
	/*2. 상품명 앞부분만 지정해서 상품 가져오기 (니트 => '니트%' 로 해서 가져오기)*/
	public static String getProduct = 
    "SELECT * FROM T_PRODUCT WHERE PNAME LIKE ?";   	
	
	/*3. 회원 아이디 지정해서 구매 목록 가져오기. 이 때 상품 사진, 이름, 가격도 같이 가져오기*/
	public static String getPurhistory = 
	"SELECT P.IMGNAME AS IMGNAME, P.PNAME AS PNAME, P.PRICE AS PRICE, H.HID AS HID, H.USERID AS USERID, H.PID AS PID, H.PDATE AS PDATE FROM " + 
	"	T_PRODUCT P LEFT JOIN T_PURHISTORY H " + 
	"	ON P.PID = H.PID" + 
	"	WHERE H.USERID = ?";

	




}




