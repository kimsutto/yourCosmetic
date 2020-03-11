package action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CosmeticDAO;
import dto.Cosmetic;
import jdbc.ConnectionProvider;

public class OptionViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int type = Integer.parseInt(request.getParameter("type"));
		
		request.setAttribute("type", type);
		
		
	}
	
}
