package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Cosmetic;
import dto.Member;
import dao.CosmeticDAO;
import dao.MemberDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.sql.*;

public class ResultViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int type = Integer.parseInt(request.getParameter("type"));
		request.setAttribute("type", type);
		//System.out.println(type);			
		
		
		Connection conn = null;
		try {
		conn = ConnectionProvider.getConnection();
		
		CosmeticDAO dao = CosmeticDAO.getInstance();
		List<Cosmetic> cosList = dao.selectListByType(conn, type);
		request.setAttribute("cosList", cosList);
		
						
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
		
		Cosmetic user = new Cosmetic();
		
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
		
		

		
		
		
		List<Cosmetic> viewList = new ArrayList<>();
		
		for(Cosmetic c : cosList) {
			if(((user.isOil() && c.isOil()) || (user.isDry_skin() && c.isDry_skin()) || (user.isComplex() && c.isComplex()) || (user.isNeutral() && c.isNeutral())) &&
					((user.isBright() && c.isBright()) || (user.isMiddle() && c.isMiddle()) || (user.isDark() && c.isDark())) &&
					((user.isDry() && c.isDry()) || (user.isSensitive() && c.isSensitive()) || (user.isAcne() && c.isAcne()) || (user.isWrinkle() && c.isWrinkle()) ||
					(user.isWhitening() && c.isWhitening()) || (user.isBlack_head() && c.isBlack_head())) &&
					((user.isCool() && c.isCool()) || (user.isWarm() && c.isWarm())) && ((user.isMatte() && c.isMatte()) || (user.isGlossy() && c.isGlossy())) &&
					(!user.isToxic() || !c.isToxic())) {
				viewList.add(c);
			}
		}
		
		request.setAttribute("user", user);
		request.setAttribute("viewList", viewList);
		
			
		//System.out.println(user);
		} catch (SQLException ex) {
			System.out.println("Fail to connection.<br>");
			System.out.println("SQLException: " + ex.getMessage());
	
		}
	}
		

}
