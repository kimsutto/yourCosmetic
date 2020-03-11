package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
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
import java.util.List;
import java.io.IOException;
import java.sql.*;




public class ReviewWriteAction implements Action {
	


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String context = request.getParameter("comment");
		String type = request.getParameter("type");
		String dnoStr = request.getParameter("dno");
		String id = (String)request.getSession().getAttribute("userID");
		String name = null;
	
		int dno;
		if (dnoStr.isEmpty())
			dno = 0;
		else
			dno = Integer.valueOf(dnoStr);
		

		
			
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			BoardDAO service = BoardDAO.getInstance();
			CosmeticDAO dao = CosmeticDAO.getInstance();
			
			Cosmetic c = dao.select(conn, dno);
			name = c.getName();
			
			Board board = new Board(0,context,id,type,dno,name);
			
			service.insert(conn, board);		
		    System.out.println("Sucess Add review");
		    System.out.println(board);
		} catch (SQLException ex) {
			System.out.println("Fail to connection.<br>");
			System.out.println("SQLException: " + ex.getMessage());
		}
	}
			
		
		
	}

