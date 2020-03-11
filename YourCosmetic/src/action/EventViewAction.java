package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Event;
import dao.EventDAO;
import jdbc.ConnectionProvider;
import java.util.Collections;
import java.util.List;
import java.sql.*;


public class EventViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
		Connection conn = null;
		
	 	try {
	  	conn = ConnectionProvider.getConnection();
		EventDAO dao = EventDAO.getInstance();
		List<Event> eventList = dao.selectList(conn);
		Collections.shuffle(eventList);
		request.setAttribute("eventList", eventList);
		
	 	} catch (SQLException ex) {
 			System.out.println("Fail to connection.<br>");
 			System.out.println("SQLException: " + ex.getMessage());
 		}
	}
		
}

