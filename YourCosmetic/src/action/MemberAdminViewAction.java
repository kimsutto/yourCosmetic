package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Cosmetic;
import dto.Board;
import dto.Member;
import dao.CosmeticDAO;
import dao.MemberDAO;
import dao.BoardDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.io.IOException;
import java.sql.*;


public class MemberAdminViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
		Connection conn = null;
		
	 	try {
	  	conn = ConnectionProvider.getConnection();
		MemberDAO dao = MemberDAO.getInstance();
		List<Member> mList = dao.selectList(conn);
		request.setAttribute("mList", mList);
		
	 	} catch (SQLException ex) {
 			System.out.println("Fail to connection.<br>");
 			System.out.println("SQLException: " + ex.getMessage());
 		}
	 	
	 	
		
	}


		
		
	}

