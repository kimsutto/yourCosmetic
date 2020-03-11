package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Board;
import dto.Cosmetic;


public class BoardDAO {
	
	private BoardDAO() { 
	}
		
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance(){
		return instance;
	} 
	
	// insert
		public int insert(Connection conn, Board board) throws SQLException {
			PreparedStatement pstmt = null;
			try {
			String sql = "insert into board (context,type,Dno,name) values (?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getContext());
			pstmt.setString(2, board.getType());
			pstmt.setInt(3, board.getDno());
			pstmt.setString(4, board.getName());
		
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	// search 
		
		public List<Board> search(Connection conn, String word) throws SQLException {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				String sql = "select * from board where name like ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,"%"+ word +"%");
				rs = pstmt.executeQuery();
				List<Board> boList = new ArrayList<>();
				while (rs.next()) {
					boList.add(createFromResultSet(rs));
				}
				return boList;
			} finally {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
		
	
	// delete
		public int delete(Connection conn, int bno) throws SQLException {
			PreparedStatement pstmt = null;
			try {
				String sql = "delete from board where Bno=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bno);
				return pstmt.executeUpdate();
			} finally {
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}

	
	// selectDno(find/get)
		public Board select(Connection conn, int Dno) throws SQLException {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				String sql = "select * from board where Dno=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Dno);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					return createFromResultSet(rs);
				}
				else {
					return null;
				}
			} finally {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
			
			public Board createFromResultSet(ResultSet rs) throws SQLException {
				int Bno = rs.getInt("Bno");
				String context = rs.getString("context");
				String id = rs.getString("id");
				String type = rs.getString("type");
				int Dno = rs.getInt("Dno");
				String name = rs.getString("name");
				
				Board b = new Board(Bno,context,id,type,Dno,name);
				return b;
				
			}
			
			// selectList
			public List<Board> selectList(Connection conn) throws SQLException {
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					String sql = "select * from board";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					List<Board> boList = new ArrayList<>();
					while (rs.next()) {
						boList.add(createFromResultSet(rs));
					}
					return boList;
				} finally {
					if (rs != null) {
						rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
				}
			}
	
			// selectListByDno
			public List<Board> selectListByType(Connection conn, int Dno) throws SQLException {
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					String sql = "select * from board where Dno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, Dno);
					rs = pstmt.executeQuery();
					List<Board> boList = new ArrayList<>();
					while (rs.next()) {
						boList.add(createFromResultSet(rs));
					}
					return boList;
				} finally {
					if (rs != null) {
						rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
				}
			}
			
		
			
		

}
