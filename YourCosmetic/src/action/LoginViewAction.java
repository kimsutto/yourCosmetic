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
			loginFailedMessage = "<br> 입력한 아이디가 존재하지 않습니다. 아이디를 다시 한번 입력해 주세요. <br>";
		}
		Cookie[] cookies = request.getCookies();
		System.out.println("현재 설정된 쿠키의 개수 : " + cookies.length + "<br>");    // 쿠키가 저장된 배열의 길이를 가져온다.
		for(int i = 0 ; i<cookies.length; i++){                            // 쿠키 배열을 반복문으로 돌린다.
			System.out.println(i + "번째 쿠키 이름 : " + cookies[i].getName());            // 쿠키의 이름을 가져온다.
			System.out.println(i + "번째 쿠키에 설정된 값 : " + cookies[i].getValue());    // 쿠키의 값을 가져온다.
			System.out.println("<br>");    // 쿠키의 값을 가져온다.
		}
	}
}
