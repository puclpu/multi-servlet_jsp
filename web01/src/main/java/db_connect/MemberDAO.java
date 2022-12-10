package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class MemberDAO {

	public void insert(MemberVO bag) {
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차

		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
		// db의 유형, 버전에 따라 매우 많음
		// 필요할 때 다운로드 받아 써야 함.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 설정
			System.out.println("1. 드라이버 연결 성공");

			// 2. db 연결 : mysql - school / oracle - xe
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!

			// 3. sql문을 만든다
			String sql = "insert into MEMBER values (?, ?, ?, ?)";
			// 준비된 문장(Prepared Statement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId()); // 1번 물음표에 id에 저장해놓은 것을 스트링으로 넣어줘!
			ps.setString(2, bag.getPw()); // 2번 물음표에 pw에 저장해놓은 것을 스트링으로 넣어줘!
			ps.setString(3, bag.getName()); // 3번 물음표에 name에 저장해놓은 것을 스트링으로 넣어줘!
			ps.setString(4, bag.getTel()); // 4번 물음표에 tel에 저장해놓은 것을 스트링으로 넣어줘!
			System.out.println("3. sql문 객체 생성 성공");

			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
//			int result = ps.executeUpdate(); // r의 결과는 table, cud는 숫자(실행된 row 수)
//			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + result);

			String result2 = "실패";
			try {
				int result = ps.executeUpdate();
				System.out.println("4. 전송성공");
				if (result == 1)
					result2 = "성공";
			} catch (Exception e) {
				System.out.println("회원가입 에러발생");
			}
			JOptionPane.showMessageDialog(null, result2);

			ps.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

//	public void insert(String id, String pw, String name, String tel) {
//		// 자바에서 DBMS를 연결하려고 함.
//		// JDBC 프로그래밍 절차
//		// 4단계 절차
//		
//		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
//		// db의 유형, 버전에 따라 매우 많음
//		// 필요할 때 다운로드 받아 써야 함.
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			// 특정한 위치에 있는 드라이버 파일을 램에 설정
//			System.out.println("1. 드라이버 연결 성공");
//			
//			// 2. db 연결 : mysql - school / oracle - xe
//			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
//			String user = "scott";
//			String password = "tiger";
//			Connection con = DriverManager.getConnection(url, user, password);
//			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!
//			
//			// 3. sql문을 만든다
//			String sql = "insert into MEMBER values (?, ?, ?, ?)";
//			// 준비된 문장(Prepared Statement)
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, id); // 1번 물음표에 id에 저장해놓은 것을 스트링으로 넣어줘!
//			ps.setString(2, pw); // 2번 물음표에 pw에 저장해놓은 것을 스트링으로 넣어줘!
//			ps.setString(3, name); // 3번 물음표에 name에 저장해놓은 것을 스트링으로 넣어줘!
//			ps.setString(4, tel); // 4번 물음표에 tel에 저장해놓은 것을 스트링으로 넣어줘!
//			System.out.println("3. sql문 객체 생성 성공");
//			
//			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
//			int result = ps.executeUpdate(); // r의 결과는 table, cud는 숫자(실행된 row 수)
//			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + result);
//			
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}

	// 기능 하나 당 메서드 하나 구현
	public void delete(String id) {
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차

		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
		// db의 유형, 버전에 따라 매우 많음
		// 필요할 때 다운로드 받아 써야 함.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 설정
			System.out.println("1. 드라이버 연결 성공");

			// 2. db 연결 : mysql - school / oracle - xe
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!

			// 3. sql문을 만든다
			String sql = "delete from MEMBER where id =?";
			// 준비된 문장(Prepared Statement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id); // 1번 물음표에 id에 저장해놓은 것을 스트링으로 넣어줘!
			System.out.println("3. sql문 객체 생성 성공");

			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
			int result = ps.executeUpdate(); // r의 결과는 table, cud는 숫자(실행된 row 수)
			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + result);

			ps.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 검색 1명 - row 1개
	public MemberVO one(String id) {
		System.out.println(id); // id 넘어왔는지 확인
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차

		MemberVO bag = null;

		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
		// db의 유형, 버전에 따라 매우 많음
		// 필요할 때 다운로드 받아 써야 함.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 설정
			System.out.println("1. 드라이버 연결 성공");

			// 2. db 연결 : mysql - school / oracle - xe
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!

			// 3. sql문을 만든다
			String sql = "select * from MEMBER where id =?";
			// 준비된 문장(Prepared Statement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id); // 1번 물음표에 id에 저장해놓은 것을 스트링으로 넣어줘!
			System.out.println("3. sql문 객체 생성 성공");

			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
			ResultSet rs = ps.executeQuery(); // java.sql의 Resultset
			// ResultSet은 키와 값을 가지는 테이블 형태

//			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + rs.next());
			// rs.next() true면 결과가 있음. false면 결과가 없음

			if (rs.next()) { // 결과값이 true면
				System.out.println("검색결과가 있음");
				String id2 = rs.getString(1); // 컬럼의 순서 1번 id값 추출
				String pw = rs.getString("pw");
				String name = rs.getString(3);
				String tel = rs.getString(4);
				System.out.println("검색한 결과 >> " + id2 + " " + pw + " " + name + " " + tel);

				// ui에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 ui에게 return해주자
				// 1) 가방을 만들어서,
				bag = new MemberVO();
				// 2) 데이터를 넣고
				bag.setId(id2);
				bag.setPw(pw);
				bag.setName(name);
				bag.setTel(tel);
				// 3) return하자.
			}

			// db처리와 관련된 메모리 할당된 것 해제시켜주자.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bag;

	}

	public int login(MemberVO bag) {
		System.out.println(bag);
		int result = 0; // 0인 경우 실패.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 설정
			System.out.println("1. 드라이버 연결 성공");

			// 2. db 연결 : mysql - school / oracle - xe
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!

			// 3. sql문을 만든다
			String sql = "select * from MEMBER where id =? and pw =?";
			// 준비된 문장(Prepared Statement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getPw());
			System.out.println("3. sql문 객체 생성 성공");

			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
			ResultSet rs = ps.executeQuery(); // java.sql의 Resultset
			// ResultSet은 키와 값을 가지는 테이블 형태

//			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + rs.next());
			// rs.next() true면 결과가 있음. false면 결과가 없음

			if (rs.next()) { // 결과값이 true면
				System.out.println("검색결과가 있음");
				result = 1;
			}

			// db처리와 관련된 메모리 할당된 것 해제시켜주자.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	public ArrayList<MemberVO> list() {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();

		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
		// db의 유형, 버전에 따라 매우 많음
		// 필요할 때 다운로드 받아 써야 함.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 설정
			System.out.println("1. 드라이버 연결 성공");

			// 2. db 연결 : mysql - school / oracle - xe
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공"); // 연결 통로(Stream)가 생겼다!

			// 3. sql문을 만든다
			String sql = "select * from MEMBER";
			// 준비된 문장(Prepared Statement)
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql문 객체 생성 성공");

			// 4. sql문을 db서버에 보낸다 --> 결과가 어떻게 되었는지 자바프로그렘에 알려줌
			ResultSet rs = ps.executeQuery(); // java.sql의 Resultset
			// ResultSet은 키와 값을 가지는 테이블 형태

//			System.out.println("4. sql문 db서버로 전송 성공. 반영 row 수 >> " + rs.next());
			// rs.next() true면 결과가 있음. false면 결과가 없음

			while (rs.next()) { // 결과값이 true면
				System.out.println("검색결과가 있음");
				String id = rs.getString(1); // 컬럼의 순서 1번 id값 추출
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);

				// ui에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 ui에게 return해주자
				// 1) 가방을 만들어서,
				MemberVO bag = new MemberVO();
				// 2) 데이터를 넣고
				bag.setId(id);
				bag.setPw(pw);
				bag.setName(name);
				bag.setTel(tel);
				// 3) list에 넣자
				list.add(bag);
				System.out.println("list에 들어간 갯수>>" + list.size());
			}

			// db처리와 관련된 메모리 할당된 것 해제시켜주자.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
}
