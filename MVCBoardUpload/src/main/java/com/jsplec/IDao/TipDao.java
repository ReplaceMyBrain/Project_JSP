		package com.jsplec.IDao;
		
		import java.sql.Connection;
		import java.sql.PreparedStatement;
		import java.sql.ResultSet;
		import java.util.ArrayList;
		
		import javax.naming.Context;
		import javax.naming.InitialContext;
		import javax.sql.DataSource;
		
		import com.jsplec.IDto.TipDto;
		
		public class TipDao {
			
		DataSource dataSource;
			
			public TipDao() {
				try {
					Context context =new InitialContext();
					dataSource = (DataSource) context.lookup("java:comp/env/jdbc/jsp_project");
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			//tip 작성
			public void write(String tTitle, String tContent, String tImage) {
				Connection connection = null;
				PreparedStatement preparedStatement = null;
				
				try {
					connection = dataSource.getConnection();
					
					String query = "insert into jsp_project (tTitle, tContent, tImg) values(?,?,?)";
					preparedStatement = connection.prepareStatement(query);
					
					preparedStatement.setString(1, tTitle);
					preparedStatement.setString(2, tContent);
					preparedStatement.setString(3,  tImage);
					
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
		
			//tip 수정
			public void update(String strtNo, String tTitle, String tContent, String tImg, int tHits) {
				int tNo = Integer.parseInt(strtNo);
				Connection connection = null;
				PreparedStatement preparedStatement = null;
				
				try {
					connection = dataSource.getConnection();
					
					String query = "update jsp_project set tTitle = ? , tContent = ? , tImg = ? tHits = ? where tNo = ? ";
					preparedStatement = connection.prepareStatement(query);
					preparedStatement.setString(1, tTitle);
					preparedStatement.setString(2, tContent);
					preparedStatement.setString(3, tImg);
					preparedStatement.setInt(4, tHits);
					preparedStatement.setInt(5, tNo);
					
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
			
			//tip 보기
			public void view(String tTitle, String tContent, String tImage, int tHits) {
				
				Connection connection = null;
				PreparedStatement preparedStatement = null;
				
				try {
					connection = dataSource.getConnection();
					
					String query = "insert into jsp_project (tTitle, tContent, tImg, tHits) values(?,?,?,?)";
					
					preparedStatement = connection.prepareStatement(query);
					preparedStatement.setString(1, tTitle);
					preparedStatement.setString(2, tContent);
					preparedStatement.setString(3, tImage);
					preparedStatement.setInt(4, tHits);
					
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

			
		
		}//------------
