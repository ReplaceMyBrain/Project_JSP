package com.jspproject.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ItemInfoDao {
	
	DataSource dataSource;
	
	public ItemInfoDao() {
		try {
			Context context =new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/jsp_project");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//item 작성
	public void write(String I_TITLE, String I_CONTENT, String I_IMAGE, String I_CATEGORY) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into item(I_TITLE, I_CONTENT, I_IMAGE, I_CATEGORY) values(?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			
			
			preparedStatement.setString(1, I_TITLE);
			preparedStatement.setString(2, I_CONTENT);
			preparedStatement.setString(3, I_IMAGE);
			preparedStatement.setString(4, I_CATEGORY);
			
			preparedStatement.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			//정상적으로 끝나도, 에러가 걸려도 무조건 이쪽을 거친다.
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	//item 수정
	public void update(String strI_NUM, String I_TITLE, String I_CONTENT, String I_IMAGE,String I_CATEGORY) {
		
		int I_NUM = Integer.parseInt(strI_NUM);
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "update item set I_TITLE = ? , I_CONTENT = ? , I_IMAGE = ?, I_CATEGORY = ? where I_NUM = ?";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, I_TITLE);
			preparedStatement.setString(2, I_CONTENT);
			preparedStatement.setString(3, I_IMAGE);
			preparedStatement.setString(4, I_CATEGORY);
			preparedStatement.setInt(5, I_NUM);
			
			
			preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			//정상적으로 끝나도, 에러가 걸려도 무조건 이쪽을 거친다.
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	

	 
	

}//-----------------------
