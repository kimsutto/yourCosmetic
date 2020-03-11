package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.*;


public class CosmeticController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		Action action = null;
		if (command.equals("/MainViewAction.do")) { // 메인페이지
			action = new MainViewAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
			rd.forward(request, response);
		} else if (command.equals("/ProductDetailViewAction.do")) { // 제품상세페이지
			action = new ProductDetailViewAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("productDetailView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/ResultViewAction.do")) { // 검색결과
			action = new ResultViewAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("resultView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/LoginViewAction.do")) { // 로그인 창
			action = new LoginViewAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("loginView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/LoginAction.do")) { // 로그인
			action = new LoginAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("loginView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/LoginAction2.do")) { //관리자 로그인
			action = new LoginAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("AdminPage.jsp");
			rd.forward(request, response);
		} else if (command.equals("/MemberAction.do")) { // 회원가입
			action = new MemberAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("LoginViewAction.do");
			rd.forward(request, response);
		} else if (command.equals("/LogoutAction.do")) { // 로그아웃
			action = new LogoutAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} else if (command.equals("/OptionViewAction.do")) { // 옵션선택 창
			action = new OptionViewAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("Option.jsp");
			rd.forward(request, response);
		} else if (command.equals("/FastSearchAction.do")) { // 빠른검색
			action = new FastSearchAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("resultView.jsp");
			rd.forward(request, response);
		}else if( command.equals("/ReviewBoardViewAction.do")) {
			action = new ReviewBoardViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("reviewBoard.jsp");
			rd.forward(request, response);
		}else if(command.equals("/ReviewWriteAction.do")) {
			action = new ReviewWriteAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("ReviewBoardViewAction.do");
			rd.forward(request, response);
		}else if(command.equals("/EventViewAction.do")) {
			action = new EventViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/event.jsp");
			rd.forward(request, response);
		}else if(command.equals("/CosmeticAdminViewAction.do")) {
			action = new CosmeticAdminViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/CosmeticAdminView.jsp");
			rd.forward(request, response);
		}else if (command.equals("/DeleteCosmeticAction.do")) {
			action = new DeleteCosmeticAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/CosmeticAdminViewAction.do");
			rd.forward(request, response);
		}else if (command.equals("/CosmeticAddAction.do")) {
			action = new CosmeticAddAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/CosmeticAdminViewAction.do");
			rd.forward(request, response);
		}else if(command.equals("/MemberAdminViewAction.do")) {
			action = new MemberAdminViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/MemberAdminView.jsp");
			rd.forward(request, response);
		}else if (command.equals("/DeleteMemberAction.do")) {
			action = new DeleteMemberAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/MemberAdminViewAction.do");
			rd.forward(request, response);
		}else if(command.equals("/EventAdminViewAction.do")) {
			action = new EventAdminViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/EventAdminView.jsp");
			rd.forward(request, response);
		}else if (command.equals("/DeleteEventAction.do")) {
			action = new DeleteEventAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/EventAdminViewAction.do");
			rd.forward(request, response);
		}else if(command.equals("/ReviewAdminViewAction.do")) {
			action = new ReviewAdminViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ReviewAdminView.jsp");
			rd.forward(request, response);
		}else if (command.equals("/DeleteReviewAction.do")) {
			action = new DeleteReviewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ReviewAdminViewAction.do");
			rd.forward(request, response);
		}else if (command.equals("/EventAddAction.do")) {
			action = new EventAddAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/EventAdminViewAction.do");
			rd.forward(request, response);
		}else if (command.equals("/SearchWordAction.do")) {
			action = new SearchWordAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ReviewAdminView.jsp");
			rd.forward(request, response);
		}
}
}
