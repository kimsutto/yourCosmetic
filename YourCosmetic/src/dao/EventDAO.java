package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Board;
import dto.Event;

public class EventDAO {

	private EventDAO() { 
	}
		
	private static EventDAO instance = new EventDAO();
	public static EventDAO getInstance(){
		return instance;
	}
	
	// insert
			public int insert(Connection conn, Event event) throws SQLException {
				PreparedStatement pstmt = null;
				try {
				String sql = "insert into event (company,startDate,endDate,url) values (?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, event.getCompany());
				pstmt.setDate(2, event.getStartDate());
				pstmt.setDate(3, event.getEndDate());
				pstmt.setString(4, event.getUrl());
			
				return pstmt.executeUpdate();
			} finally {
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
			
	// delete
			public int delete(Connection conn, int Eno) throws SQLException {
				PreparedStatement pstmt = null;
				try {
					String sql = "delete from event where Eno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, Eno);
					return pstmt.executeUpdate();
				} finally {
					if (pstmt != null) {
						pstmt.close();
					}
				}
			}

		
			
			// selectEno(find/get)
			public Event select(Connection conn, int Eno) throws SQLException {
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					String sql = "select * from event where Eno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, Eno);
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
				
				public Event createFromResultSet(ResultSet rs) throws SQLException {
					int Eno = rs.getInt("Eno");
					String company = rs.getString("company");
					Date startDate = rs.getDate("startDate");
					Date endDate = rs.getDate("endDate");
					String url = rs.getString("url");
					
					Event e = new Event(Eno, company, startDate, endDate, url);
					return e;
					
				}
				
				// selectList
				public List<Event> selectList(Connection conn) throws SQLException {
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					try {
						String sql = "select * from event";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						List<Event> eventList = new ArrayList<>();
						while (rs.next()) {
							eventList.add(createFromResultSet(rs));
						}
						return eventList;
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
