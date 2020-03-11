package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Cosmetic;
import dto.Board;
import dto.Member;
import dto.Event;
import dao.EventDAO;
import dao.CosmeticDAO;
import dao.MemberDAO;
import dao.BoardDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.io.IOException;
import java.sql.*;


public class EventAddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			Connection conn = null;
		
			try {
				conn = ConnectionProvider.getConnection();
				EventDAO dao = EventDAO.getInstance();
		
				Event e = new Event();
				
				String company = request.getParameter("company");
				e.setCompany(company);
				
				String startDateStr = request.getParameter("startDate");
				Date startDate;
				if (startDateStr == null || startDateStr.isEmpty() || startDateStr.equals("null")) 
					startDate = null;
				else
					startDate = Date.valueOf(startDateStr);
				
				e.setStartDate(startDate);
				
				String endDateStr = request.getParameter("endDate");
				Date endDate;
				if (endDateStr == null || endDateStr.isEmpty() || endDateStr.equals("null")) 
					endDate = null;
				else
					endDate = Date.valueOf(endDateStr);
				
				e.setEndDate(endDate);
				
				String url = request.getParameter("url");
				e.setUrl(url);
				
				dao.insert(conn, e);
				
		 	} catch (SQLException ex) {
	 			System.out.println("Fail to connection.<br>");
	 			System.out.println("SQLException: " + ex.getMessage());
	 		}
		 	
		 	
			
		}


			
			
		}