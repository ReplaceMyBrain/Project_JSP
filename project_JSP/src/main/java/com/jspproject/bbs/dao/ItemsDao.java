package com.jspproject.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jspproject.bbs.dto.PostDto;


public class ItemsDao {

	DataSource dataSource;
	
	public ItemsDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/jsp_project");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
	}
	
	public ArrayList<PostDto> list() {
		ArrayList<PostDto> dtos = new ArrayList<PostDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultset = null;

		try {
			connection = dataSource.getConnection();

			String query = "SELECT I_NUM, I_TITLE, I_CONTENT, I_IMAGE, I_CATEGORY, I_HITS FROM ITEM";
			preparedStatement = connection.prepareStatement(query);
			resultset = preparedStatement.executeQuery();

			while(resultset.next()) {
				int num = resultset.getInt("I_NUM");
				String title = resultset.getString("I_TITLE");
				String content = resultset.getString("I_CONTENT");
				String imgSrc = resultset.getString("I_IMAGE");
				String category = resultset.getString("I_CATEGORY");
				int views = resultset.getInt("I_HITS");
				
				PostDto dto = new PostDto(num, title, content, imgSrc, category, views);
				dtos.add(dto);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultset != null) resultset.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dtos;
	}
	


}
