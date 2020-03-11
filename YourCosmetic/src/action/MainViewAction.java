package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Cosmetic;
import dao.CosmeticDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class MainViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String userID = (String)request.getSession().getAttribute("userID");
		String userPW = (String)request.getSession().getAttribute("userPW");
		
		if (userID != null && userPW != null) {
			request.getSession().setAttribute("FastSearch", "Yes");
		}
		
		
		// db ¿¬°á 
	      	Connection conn = null;
	 	  	try {
	  	 	conn = ConnectionProvider.getConnection();
	  	 	List<Cosmetic> cList = new ArrayList<Cosmetic>();
	  	 	CosmeticDAO dao = CosmeticDAO.getInstance();
	   		cList = dao.selectList(conn);
	  	 	
	  	 	/*for(int i=1; i<=6; i++) {
	   			Cosmetic c = dao.select(conn, i);
	   			cList.add(c);
	   		}*/
	   		
	   		request.setAttribute("cList", cList);
	  	 	 	  	
 	} catch (SQLException ex) {
			System.out.println("Fail to connection.<br>");
			System.out.println("SQLException: " + ex.getMessage());
		}
		
	}

}
