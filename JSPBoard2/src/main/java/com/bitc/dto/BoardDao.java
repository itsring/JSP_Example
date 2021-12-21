package com.bitc.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {

	private String drivers = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimerzone=UTC";
	private String uid = "test_user";
	private String upw = "1234";

	public BoardDao() {
		try {
			Class.forName(drivers);

		} catch (Exception se) {
			se.printStackTrace();
		}
	}

	/* 게시글 목록 */
	public ArrayList<BoardDto> selectBoardList() {
		ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * ";
		sql+=" from t_board where deleted_yn = 'N';";
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(sql);
			
			
	
			rs=pstmt.executeQuery();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String title = rs.getString("title");
				String contents =rs.getString("contents");
				String creater_id = rs.getString("creater_id");
				String created_date = rs.getString("created_date");
				String update_id = rs.getString("update_id");
				String updated_date = rs.getString("updated_date");
				int hit_cnt = rs.getInt("hit_cnt");
				
				BoardDto item = new BoardDto();
				
				item.setIdx(idx);
				item.setTitle(title);
				item.setContents(contents);
				item.setCreater_id(creater_id);
				item.setCreated_date(created_date);
				item.setUpdate_id(update_id);
				item.setUpdated_date(updated_date);
				item.setHit_cnt(hit_cnt);
				
				boardList.add(item);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
		
		
		return boardList;
	}
	/* 게시글 확인 */
	public ArrayList<BoardDto> selectBoard(int num) {
		ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql =  "select * ";
		sql += "from t_board ";
		sql += "where idx=? "; 
		sql += "AND deleted_yn = 'N' ";
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
	
			rs=pstmt.executeQuery();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String title = rs.getString("title");
				String contents =rs.getString("contents");
				String creater_id = rs.getString("creater_id");
				String created_date = rs.getString("created_date");
				String update_id = rs.getString("update_id");
				String updated_date = rs.getString("updated_date");
				int hit_cnt = rs.getInt("hit_cnt");
				
				BoardDto item = new BoardDto();
				
				item.setIdx(idx);
				item.setTitle(title);
				item.setContents(contents);
				item.setCreater_id(creater_id);
				item.setCreated_date(created_date);
				item.setUpdate_id(update_id);
				item.setUpdated_date(updated_date);
				item.setHit_cnt(hit_cnt);
				
				boardList.add(item);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
		
		
		return boardList;
	}
	/* 게시글 등록 */
	public int BoardInsert(BoardDto board) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into t_board ";
		sql+="(title, contents, creater_id, created_date) ";
		sql+= "values(?,?,?,now());";
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setString(3, board.getCreater_id());
			
			result=pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
		return result;
	}
	/* 게시글 수정 */
	public int BoardUpdate(BoardDto board) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(sql);
			
			/* pstmt.setString(1, ); */
			
			result=pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
		return result;
	}
	/* 게시글 삭제 */
	public int BoardDelete(BoardDto board) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(sql);
			/*
			 * pstmt.setString(1, );
			 */
			
			result=pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
		return result;
	}
}
