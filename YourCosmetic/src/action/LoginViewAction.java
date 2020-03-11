package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginViewAction implements Action{

	public Cookie getCookie(HttpServletRequest request, String name) {
	    Cookie[] cookies = request.getCookies();
	    Cookie cookie = null;
	    if (cookies != null) {
	        for (Cookie c : cookies) {
	            if (c.getName().equals(name)) {
	            	cookie = c;
	                break;
	            }
	        }
	    }
	    return cookie;
	}
	
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
		Cookie cookieID = getCookie(request, "userID");
		String id = "";
		request.getSession().setAttribute("status", null);
		
		if (cookieID != null) {
			id = cookieID.getValue();
			request.getSession().setAttribute("id", id);
		}
		Cookie cookiePW = getCookie(request, "userPW");
		String password = "";
		if (cookiePW != null) {
			password = cookiePW.getValue();
			request.getSession().setAttribute("password", password);
		}
		String status = (String) request.getSession().getAttribute("status");
		String loginFailedMessage = "";
		if (status != null && status.equals("failed")) {
			password = "";
			loginFailedMessage = "<br> �Է��� ���̵� �������� �ʽ��ϴ�. ���̵� �ٽ� �ѹ� �Է��� �ּ���. <br>";
		}
		Cookie[] cookies = request.getCookies();
		System.out.println("���� ������ ��Ű�� ���� : " + cookies.length + "<br>");    // ��Ű�� ����� �迭�� ���̸� �����´�.
		for(int i = 0 ; i<cookies.length; i++){                            // ��Ű �迭�� �ݺ������� ������.
			System.out.println(i + "��° ��Ű �̸� : " + cookies[i].getName());            // ��Ű�� �̸��� �����´�.
			System.out.println(i + "��° ��Ű�� ������ �� : " + cookies[i].getValue());    // ��Ű�� ���� �����´�.
			System.out.println("<br>");    // ��Ű�� ���� �����´�.
		}
	}
}
