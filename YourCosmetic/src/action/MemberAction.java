package action;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.Cosmetic;
import dto.Member;
import jdbc.ConnectionProvider;

public class MemberAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("memberId");
		String password = request.getParameter("memberPassword");
		String name = request.getParameter("memberName");
		String skinType = request.getParameter("skinType");
		request.setAttribute("skinType", skinType);
		
		String skinTone = request.getParameter("skinTone");
		request.setAttribute("skinTone", skinTone);
		
		String[] problem = request.getParameterValues("problem");
		request.setAttribute("problem", problem);
		
		String tone = request.getParameter("tone");
		request.setAttribute("tone", tone);
		
		String material = request.getParameter("material");
		request.setAttribute("material", material);
		
		String toxic = request.getParameter("toxic");
		request.setAttribute("toxic", toxic);
		
		Member user = new Member();
		
		user.setId(id);
		user.setPassword(password);
		user.setName(name);	
		
		if(skinType == null){
			user.setOil(true);
			user.setDry_skin(true);
			user.setComplex(true);
			user.setNeutral(true);
		}else if(skinType.contentEquals("oil"))
			user.setOil(true);
		else if(skinType.contentEquals("dry_skin"))
			user.setDry_skin(true);
		else if(skinType.contentEquals("complex"))
			user.setComplex(true);
		else if(skinType.contentEquals("neutral"))
			user.setNeutral(true);
		
		if(skinTone == null){
			user.setBright(true);
			user.setMiddle(true);
			user.setDark(true);		
		}else if(skinTone.contentEquals("bright"))
			user.setBright(true);
		else if(skinTone.contentEquals("middle"))
			user.setMiddle(true);
		else if(skinTone.contentEquals("dark"))
			user.setDark(true);
		
		
		if(problem == null){
			user.setDry(true);
			user.setSensitive(true);
			user.setAcne(true);
			user.setWrinkle(true);
			user.setWhitening(true);
			user.setBlack_head(true);
		}else{
			for(String a : problem){
				if(a.contentEquals("dry"))
					user.setDry(true);
				if(a.contentEquals("sensitive"))
					user.setSensitive(true);
				if(a.contentEquals("acne"))
					user.setAcne(true);
				if(a.contentEquals("wrinkle"))
					user.setWrinkle(true);
				if(a.contentEquals("whitening"))
					user.setWhitening(true);
				if(a.contentEquals("black_head"))
					user.setBlack_head(true);
			}
		}
		
		if(tone == null){
			user.setCool(true);
			user.setWarm(true);
		}else if(tone.contentEquals("cool"))
			user.setCool(true);
		else if(tone.contentEquals("warm"))
			user.setWarm(true);
		
		if(material == null){
			user.setMatte(true);
			user.setGlossy(true);
		}else if(material.contentEquals("matte"))
			user.setMatte(true);
		else if(material.contentEquals("glossy"))
			user.setGlossy(true);
		
		if(toxic == null){
			user.setToxic(false);
		}else if(toxic.contentEquals("check"))
			user.setToxic(true);
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDAO dao = MemberDAO.getInstance();
			List<Member> list = dao.selectList(conn);
			
			int count = 0;
			for(Member m : list) {
				count++;
			}
			
			user.setUno(count);
			
			dao.insert(conn, user);
				
			
		} catch (SQLException ex) {
			System.out.println("Fail to connection.<br>");
			System.out.println("SQLException: " + ex.getMessage());
		}
	}

}
