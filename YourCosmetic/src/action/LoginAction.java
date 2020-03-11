package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import jdbc.ConnectionProvider;
import dto.Member;
import dao.MemberDAO;
import jdbc.ConnectionProvider;
import java.util.Calendar;
import java.io.IOException;
import java.sql.*;

public class LoginAction implements Action  {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("userID");
		String pw = request.getParameter("userPW");
		String blank = "";
		
		String save = request.getParameter("save");
		if (save != null && save.equals("on")) { // the latest user ID & PW
			Cookie cookieID = new Cookie("userID", id);
			response.addCookie(cookieID);
			Cookie cookiePW = new Cookie("userPW", pw);
			response.addCookie(cookiePW);
			//out.println("Cookie Creation Successful~");
		}else {
			Cookie cookieBlank = new Cookie("userID", blank);
			response.addCookie(cookieBlank);
			cookieBlank = new Cookie("userPW", blank);
			response.addCookie(cookieBlank);
		}
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDAO dao = MemberDAO.getInstance();
		
			Member member = dao.select(conn, id, pw);
			request.getSession().setAttribute("FastSearch", "Yes");
			
			if (member == null) {
				
				throw new NotFoundException("Member Not Found with id=" + id);
				
			}
			request.getSession().setMaxInactiveInterval(10 * 60); // 10 minute
			request.getSession().setAttribute("userID", id);
			request.getSession().setAttribute("userPW", pw);
			System.out.println("Session Successful~");
			request.getSession().setAttribute("status", "success");
		} catch (NotFoundException e) {
			System.out.println("Member NotFoundException");
			request.getSession().setAttribute("status", "failed");
			
		} catch (SQLException e) {
			System.out.println("Member db access error ");
			request.getSession().setAttribute("status", "failed");
		} finally {
			
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.getMessage();
				}

			}
		}
		
	}

}
