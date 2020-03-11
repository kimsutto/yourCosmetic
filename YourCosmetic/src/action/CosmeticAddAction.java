package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.Cosmetic;
import dto.Board;
import dto.Member;
import dao.CosmeticDAO;
import dao.MemberDAO;
import dao.BoardDAO;
import jdbc.ConnectionProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.io.IOException;
import java.sql.*;


public class CosmeticAddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException{
			
			int fileSize = 5*500*500;
			String uploadPath = request.getServletContext().getRealPath("/product");
		
			Connection conn = null;
		
			try {
				
				//파일 업로드 
				MultipartRequest multi = new MultipartRequest(request,uploadPath,fileSize,"euc-kr",new DefaultFileRenamePolicy());
				
				String fileName = "";
				Enumeration<String> names = multi.getFileNames();
				if(names.hasMoreElements())
				{
					String name= names.nextElement();
					fileName = multi.getFilesystemName(name);
				}
				
				conn = ConnectionProvider.getConnection();
				CosmeticDAO dao = CosmeticDAO.getInstance();
		
				Cosmetic c = new Cosmetic();
	
				String typeStr = request.getParameter("type");
				int type;
				if (typeStr.isEmpty())
					type = 0;
				else
					type = Integer.valueOf(typeStr);
				
				
				c.setType(type);
				
				String name = request.getParameter("name");
				c.setName(name);
				
				String manufacturer = request.getParameter("manufacturer");
				c.setManufacturer(manufacturer);
				
				String priceStr = request.getParameter("price");
				
				int price;
				if(priceStr.isEmpty())
					price=0;
				else
					price=Integer.valueOf(typeStr);
				
				c.setPrice(price);
				
				
				
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
				
				if(skinType == null){
					c.setOil(true);
					c.setDry_skin(true);
					c.setComplex(true);
					c.setNeutral(true);
				}else if(skinType.contentEquals("oil"))
					c.setOil(true);
				else if(skinType.contentEquals("dry_skin"))
					c.setDry_skin(true);
				else if(skinType.contentEquals("complex"))
					c.setComplex(true);
				else if(skinType.contentEquals("neutral"))
					c.setNeutral(true);
				
				if(skinTone == null){
					c.setBright(true);
					c.setMiddle(true);
					c.setDark(true);		
				}else if(skinTone.contentEquals("bright"))
					c.setBright(true);
				else if(skinTone.contentEquals("middle"))
					c.setMiddle(true);
				else if(skinTone.contentEquals("dark"))
					c.setDark(true);
				
				
				if(problem == null){
					c.setDry(true);
					c.setSensitive(true);
					c.setAcne(true);
					c.setWrinkle(true);
					c.setWhitening(true);
					c.setBlack_head(true);
				}else{
					for(String a : problem){
						if(a.contentEquals("dry"))
							c.setDry(true);
						if(a.contentEquals("sensitive"))
							c.setSensitive(true);
						if(a.contentEquals("acne"))
							c.setAcne(true);
						if(a.contentEquals("wrinkle"))
							c.setWrinkle(true);
						if(a.contentEquals("whitening"))
							c.setWhitening(true);
						if(a.contentEquals("black_head"))
							c.setBlack_head(true);
					}
				}
				
				if(tone == null){
					c.setCool(true);
					c.setWarm(true);
				}else if(tone.contentEquals("cool"))
					c.setCool(true);
				else if(tone.contentEquals("warm"))
					c.setWarm(true);
				
				if(material == null){
					c.setMatte(true);
					c.setGlossy(true);
				}else if(material.contentEquals("matte"))
					c.setMatte(true);
				else if(material.contentEquals("glossy"))
					c.setGlossy(true);
				
				if(toxic == null){
					c.setToxic(false);
				}else if(toxic.contentEquals("check"))
					c.setToxic(true);
				
				
				String toxicStr = request.getParameter("toxicStr");
				c.setToxicStr(toxicStr);
				
				String ingredient = request.getParameter("ingredient");
				c.setIngredient(ingredient);
				
				String url = request.getParameter("url");
				c.setUrl(url);

				
				
				dao.insert(conn, c);

		
	 	} catch (SQLException ex) {
 			System.out.println("Fail to connection.<br>");
 			System.out.println("SQLException: " + ex.getMessage());
 		}
	 	
	 	
		
	}


		
		
	}