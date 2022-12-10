package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// DB를 접근하여 CRUD처리만 담당하는 부품
// 다른 역할을 하지 않음.
public class MemberDAO {
	
	// 가입
	public int insert(MemberDTO dto) {
		int result = 0;
		try {
		// 1.드라이버(커넥터) 설정
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("1.ok----------");

		// 2.DB연결(url, id, pw)
		String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
		String user = "scott";
		String password = "tiger";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2.ok----------");

		// 3.SQL문 결정/생성
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());
		System.out.println("3.ok----------");
		// 4.DB로 SQL문 전송
		result = ps.executeUpdate();
		System.out.println("4.ok----------");
		}catch(Exception e) {
			System.out.println("에러가 발생함.");
		}
		return result;
	}
	
	// 로그인
	public boolean login(MemberDTO dto) throws Exception {
		// 1.드라이버(커넥터) 설정
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("1.ok----------");

		// 2.DB연결(url, id, pw)
		String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
		String user = "scott";
		String password = "tiger";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2.ok----------");

		// 3.SQL문 결정/생성
		String sql = "select * from member where id = ? and pw = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		ResultSet rs = ps.executeQuery();
		System.out.println("4.ok----------");
		boolean result = false;
		if(rs.next()) {
			result = true;
		}
		return result;
	}
}
