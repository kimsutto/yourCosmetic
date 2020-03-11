package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Board;
import dto.Cosmetic;

public class CosmeticDAO {
	
	private CosmeticDAO() { 
	}
		
	private static CosmeticDAO instance = new CosmeticDAO();
	public static CosmeticDAO getInstance(){
		return instance;
	} 
	
	// insert
			public int insert(Connection conn, Cosmetic cosmetic) throws SQLException {
				PreparedStatement pstmt = null;
				try {
				String sql = "insert into cosmeticdata values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, cosmetic.getNo());
				pstmt.setInt(2, cosmetic.getType());
				pstmt.setString(3, cosmetic.getName());
				pstmt.setString(4, cosmetic.getManufacturer());
				pstmt.setInt(5, cosmetic.getPrice());
				pstmt.setBoolean(6, cosmetic.isOil());
				pstmt.setBoolean(7, cosmetic.isDry_skin());
				pstmt.setBoolean(8, cosmetic.isComplex());
				pstmt.setBoolean(9, cosmetic.isNeutral());
				pstmt.setBoolean(10, cosmetic.isBright());
				pstmt.setBoolean(11, cosmetic.isMiddle());
				pstmt.setBoolean(12, cosmetic.isDark());
				pstmt.setBoolean(13,cosmetic.isDry());
				pstmt.setBoolean(14, cosmetic.isSensitive());
				pstmt.setBoolean(15, cosmetic.isAcne() );
				pstmt.setBoolean(16, cosmetic.isWrinkle());
				pstmt.setBoolean(17, cosmetic.isWhitening());
				pstmt.setBoolean(18, cosmetic.isBlack_head());
				pstmt.setBoolean(19, cosmetic.isCool() );
				pstmt.setBoolean(20, cosmetic.isWarm());
				pstmt.setBoolean(21, cosmetic.isMatte());
				pstmt.setBoolean(22, cosmetic.isGlossy() );
				pstmt.setBoolean(23, cosmetic.isToxic());
				pstmt.setString(24, cosmetic.getToxicStr());
				
				pstmt.setString(25, cosmetic.getIngredient());
				pstmt.setString(26, cosmetic.getUrl());
				return pstmt.executeUpdate();
			} finally {
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
		// delete
			public int delete(Connection conn, int no) throws SQLException {
				PreparedStatement pstmt = null;
				try {
					String sql = "delete from cosmeticdata where Dno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, no);
					return pstmt.executeUpdate();
				} finally {
					if (pstmt != null) {
						pstmt.close();
					}
				}
			}

	// select(find/get)
	public Cosmetic select(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from cosmeticdata where Dno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return createFromResultSet(rs);
			}
			else {
				return null;
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
		
		public Cosmetic createFromResultSet(ResultSet rs) throws SQLException {
			int no = rs.getInt("Dno");
			int type = rs.getInt("type");
			String name = rs.getString("이름");
			String manufacturer = rs.getString("제조사");
			int price = rs.getInt("가격");
			boolean oil = rs.getBoolean("지성");
			boolean dry_skin = rs.getBoolean("건성");
			boolean complex = rs.getBoolean("복합성");
			boolean neutral = rs.getBoolean("중성");
			boolean bright = rs.getBoolean("밝은톤");
			boolean middle = rs.getBoolean("중간톤");
			boolean dark = rs.getBoolean("어두운톤");
			boolean dry = rs.getBoolean("건조");
			boolean sensitive = rs.getBoolean("민감");
			boolean acne = rs.getBoolean("여드름");
			boolean wrinkle = rs.getBoolean("주름/탄력");
			boolean whitening = rs.getBoolean("미백");
			boolean black_head = rs.getBoolean("블랙헤드/피지");
			boolean cool = rs.getBoolean("쿨톤");
			boolean warm = rs.getBoolean("웜톤");
			boolean matte = rs.getBoolean("매트");
			boolean glossy = rs.getBoolean("글로시");
			boolean toxic = rs.getBoolean("유해");
			String toxicStr = rs.getString("유해성분");
			String ingredient = rs.getString("성분");
			String url = rs.getString("주소");
			
			Cosmetic cos = new Cosmetic(no, type, name, manufacturer, price, oil, dry_skin, complex, neutral, bright, middle, dark,
					dry, sensitive, acne, wrinkle, whitening, black_head, cool, warm, matte, glossy, toxic, toxicStr, ingredient, url);
			return cos;
		}
		
		// selectList
		public List<Cosmetic> selectList(Connection conn) throws SQLException {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				String sql = "select * from cosmeticdata";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				List<Cosmetic> cosList = new ArrayList<>();
				while (rs.next()) {
					cosList.add(createFromResultSet(rs));
				}
				return cosList;
			} finally {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
		
		
		// selectListByType
		public List<Cosmetic> selectListByType(Connection conn, int type) throws SQLException {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				String sql = "select * from cosmeticdata where type=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, type);
				rs = pstmt.executeQuery();
				List<Cosmetic> cosList = new ArrayList<>();
				while (rs.next()) {
					cosList.add(createFromResultSet(rs));
				}
				return cosList;
			} finally {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			}
		}
	}


