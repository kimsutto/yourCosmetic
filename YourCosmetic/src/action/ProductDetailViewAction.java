package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import dto.Cosmetic;
import dao.BoardDAO;
import dao.CosmeticDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class ProductDetailViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int no = Integer.parseInt(request.getParameter("no"));
		
	    // db ¿¬°á 
	    Connection conn = null;
	 	try {
	  	conn = ConnectionProvider.getConnection();
		CosmeticDAO dao = CosmeticDAO.getInstance();
		Cosmetic product = dao.select(conn, no);
		request.setAttribute("product", product);
		
		BoardDAO dao2 = BoardDAO.getInstance();
		List<Board> boList = dao2.selectListByType(conn, no);
		request.setAttribute("boList", boList);
		
	 	} catch (SQLException ex) {
 			System.out.println("Fail to connection.<br>");
 			System.out.println("SQLException: " + ex.getMessage());
 		}
		
	}

}
