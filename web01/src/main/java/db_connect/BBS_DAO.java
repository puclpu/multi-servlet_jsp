package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BBS_DAO {

	public void insert(BBS_VO bag) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "insert into BBS values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bag.getId());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getWriter());
//			ps.setInt(5, no);

			int result = ps.executeUpdate();
			System.out.println("sql문 db서버로 전송 성공. 반영 row 수 >> " + result);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(BBS_VO bag) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "update BBS set title=?, content=?, writer=? where no =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getTitle());
			ps.setString(2, bag.getContent());
			ps.setString(3, bag.getWriter());
			ps.setInt(4, bag.getId());

			int result = ps.executeUpdate();
			System.out.println("sql문 db서버로 전송 성공. 반영 row 수 >> " + result);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = "delete from BBS where no =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			
			int result = ps.executeUpdate();
			System.out.println("sql문 db서버로 전송 성공. 반영 row 수 >> " + result);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public BBS_VO one(int no) {
		BBS_VO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select * from BBS where no =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, no);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) { // 결과값이 true면
				System.out.println("검색결과가 있음");
				int no2 = rs.getInt(1); // 컬럼의 순서 1번 id값 추출
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				System.out.println("검색한 결과 >> " + no2 + " " + title + " " + content + " " + writer);

				// ui에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 ui에게 return해주자
				// 1) 가방을 만들어서,
				bag = new BBS_VO();
				// 2) 데이터를 넣고
				bag.setId(no2);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setWriter(writer);
				// 3) return하자.
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bag;

	}

	public ArrayList<BBS_VO> list() {
		ArrayList<BBS_VO> list = new ArrayList<BBS_VO>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = "select * from BBS";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) { // 결과값이 true면
				System.out.println("검색결과가 있음");
				int no2 = rs.getInt(1); // 컬럼의 순서 1번 id값 추출
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				System.out.println("검색한 결과 >> " + no2 + " " + title + " " + content + " " + writer);
				
				// ui에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 ui에게 return해주자
				// 1) 가방을 만들어서,
				BBS_VO bag = new BBS_VO();
				// 2) 데이터를 넣고
				bag.setId(no2);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setWriter(writer);
				
				list.add(bag);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

}
