package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CosmeticDAO;
import dao.MemberDAO;
import dto.Cosmetic;
import dto.Member;
import jdbc.ConnectionProvider;

public class FastSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int type = Integer.parseInt(request.getParameter("type"));
		request.setAttribute("type", type);
		String FastSearch = (String)request.getSession().getAttribute("FastSearch");
		request.setAttribute("FastSearch", FastSearch);
		
		
		Connection conn = null;
		try {
		conn = ConnectionProvider.getConnection();
		
		CosmeticDAO dao = CosmeticDAO.getInstance();
		List<Cosmetic> cosList = dao.selectListByType(conn, type);
		request.setAttribute("cosList", cosList);
		
				String userID = (String)request.getSession().getAttribute("userID");
				String userPW = (String)request.getSession().getAttribute("userPW");
				
				MemberDAO dao2 = MemberDAO.getInstance();
				Member member = dao2.select(conn, userID, userPW); 
				System.out.println(member);
				List<Cosmetic> viewList = new ArrayList<>();
				
				Cosmetic user = new Cosmetic();
				
				String skinType = "no";
				String skinTone = "no";
				String problem = "no";
				String tone = "no";
				String material = "no";
				
				if(member.isOil())
					user.setOil(true);
				if(member.isDry_skin())
					user.setDry_skin(true);
				if(member.isComplex())
					user.setComplex(true);
				if(member.isNeutral())
					user.setNeutral(true);
				
				if(member.isOil() && member.isDry_skin() && member.isComplex() && member.isNeutral()) {
					skinType = null;
					request.setAttribute("skinType", skinType);
				}
				
				if(member.isBright())
					user.setBright(true);
				if(member.isMiddle())
					user.setMiddle(true);
				if(member.isDark())
					user.setDark(true);
				
				if(member.isBright() && member.isMiddle() && member.isDark()) {
					skinTone = null;
					request.setAttribute("skinTone", skinTone);
				}
				
				if(member.isDry())
					user.setDry(true);
				if(member.isSensitive())
					user.setSensitive(true);
				if(member.isAcne())
					user.setAcne(true);
				if(member.isWrinkle())
					user.setWrinkle(true);
				if(member.isWhitening())
					user.setWhitening(true);
				if(member.isBlack_head())
					user.setBlack_head(true);
				
				if(member.isDry() && member.isSensitive() && member.isAcne() && member.isWrinkle() && member.isWhitening() && member.isBlack_head()) {
					problem = null;
					request.setAttribute("problem", problem);
				}
				
				if(member.isCool())
					user.setCool(true);
				if(member.isWarm())
					user.setWarm(true);
				
				if(member.isCool() && member.isWarm()) {
					tone = null;
					request.setAttribute("tone", tone);
				}
				
				if(member.isMatte())
					user.setMatte(true);
				if(member.isGlossy())
					user.setGlossy(true);
				
				if(member.isMatte() && member.isGlossy()) {
					material = null;
					request.setAttribute("material", material);
				}
				
				if(member.isToxic())
					user.setToxic(true);
			
				
				for(Cosmetic c : cosList) {
					if(((member.isOil() && c.isOil()) || (member.isDry_skin() && c.isDry_skin()) || (member.isComplex() && c.isComplex()) || (member.isNeutral() && c.isNeutral())) &&
							((member.isBright() && c.isBright()) || (member.isMiddle() && c.isMiddle()) || (member.isDark() && c.isDark())) &&
							((member.isDry() && c.isDry()) || (member.isSensitive() && c.isSensitive()) || (member.isAcne() && c.isAcne()) || (member.isWrinkle() && c.isWrinkle()) ||
							(member.isWhitening() && c.isWhitening()) || (member.isBlack_head() && c.isBlack_head())) &&
							((member.isCool() && c.isCool()) || (member.isWarm() && c.isWarm())) && ((member.isMatte() && c.isMatte()) || (member.isGlossy() && c.isGlossy())) &&
							(!member.isToxic() || !c.isToxic())) {
						viewList.add(c);
					}
				}
				
				
				request.setAttribute("skinType", skinType);
				request.setAttribute("skinTone", skinTone);
				request.setAttribute("problem", problem);
				request.setAttribute("tone", tone);
				request.setAttribute("material", material);
				
				request.setAttribute("user", user);
				request.setAttribute("viewList", viewList);
				System.out.println(viewList);
				
		} catch (SQLException ex) {
			System.out.println("Fail to connection.<br>");
			System.out.println("SQLException: " + ex.getMessage());
	
		}
		
		
	}
}

