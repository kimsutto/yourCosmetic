package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Member;

public class MemberDAO {
	private MemberDAO() { 
	}
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance(){
		return instance;
	} 

	// insert
	public int insert(Connection conn, Member member) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into user values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, member.getUno());
			pstmt.setString(2, member.getId());
			pstmt.setString(3, member.getPassword());
			pstmt.setString(4, member.getName());
			pstmt.setBoolean(5, member.isOil());
			pstmt.setBoolean(6, member.isDry_skin());
			pstmt.setBoolean(7, member.isComplex());
			pstmt.setBoolean(8, member.isNeutral());
			pstmt.setBoolean(9, member.isBright());
			pstmt.setBoolean(10, member.isMiddle());
			pstmt.setBoolean(11, member.isDark());
			pstmt.setBoolean(12, member.isDry());
			pstmt.setBoolean(13, member.isSensitive());
			pstmt.setBoolean(14, member.isAcne());
			pstmt.setBoolean(15, member.isWrinkle());
			pstmt.setBoolean(16, member.isWhitening());
			pstmt.setBoolean(17, member.isBlack_head());
			pstmt.setBoolean(18, member.isCool());
			pstmt.setBoolean(19, member.isWarm());
			pstmt.setBoolean(20, member.isMatte());
			pstmt.setBoolean(21, member.isGlossy());
			pstmt.setBoolean(22, member.isToxic());
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	// delete
	public int delete(Connection conn, int Uno) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from user where Uno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Uno);
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	// select(find/get)
	public Member select(Connection conn, String id, String password) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from user where id=? and password=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
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
	
	public Member createFromResultSet(ResultSet rs) throws SQLException {
		int Uno = rs.getInt("Uno");
		String id = rs.getString("id");
		String password = rs.getString("password");
		String name = rs.getString("name");
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
		Member member = new Member(Uno, id, password, name, oil, dry_skin, complex, neutral, bright, middle, dark,
				dry, sensitive, acne, wrinkle, whitening, black_head, cool, warm, matte, glossy, toxic);
		return member;
	}
	
	// selectList
	public List<Member> selectList(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<Member> memberList = new ArrayList<>();
			while (rs.next()) {
				memberList.add(createFromResultSet(rs));
			}
			return memberList;
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
