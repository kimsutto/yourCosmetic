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


public class DeleteEventAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int Eno = Integer.parseInt(request.getParameter("Eno"));
		Connection conn = null;
		
	 	try {
	  	conn = ConnectionProvider.getConnection();
		EventDAO dao = EventDAO.getInstance();
		dao.delete(conn, Eno);

		
	 	} catch (SQLException ex) {
 			System.out.println("Fail to connection.<br>");
 			System.out.println("SQLException: " + ex.getMessage());
 		}
	 	
	 	
		
	}


		
		
	}

