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
			String name = rs.getString("�̸�");
			String manufacturer = rs.getString("������");
			int price = rs.getInt("����");
			boolean oil = rs.getBoolean("����");
			boolean dry_skin = rs.getBoolean("�Ǽ�");
			boolean complex = rs.getBoolean("���ռ�");
			boolean neutral = rs.getBoolean("�߼�");
			boolean bright = rs.getBoolean("������");
			boolean middle = rs.getBoolean("�߰���");
			boolean dark = rs.getBoolean("��ο���");
			boolean dry = rs.getBoolean("����");
			boolean sensitive = rs.getBoolean("�ΰ�");
			boolean acne = rs.getBoolean("���帧");
			boolean wrinkle = rs.getBoolean("�ָ�/ź��");
			boolean whitening = rs.getBoolean("�̹�");
			boolean black_head = rs.getBoolean("�����/����");
			boolean cool = rs.getBoolean("����");
			boolean warm = rs.getBoolean("����");
			boolean matte = rs.getBoolean("��Ʈ");
			boolean glossy = rs.getBoolean("�۷ν�");
			boolean toxic = rs.getBoolean("����");
			String toxicStr = rs.getString("���ؼ���");
			String ingredient = rs.getString("����");
			String url = rs.getString("�ּ�");
			
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


