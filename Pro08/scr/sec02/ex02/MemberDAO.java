package sec02.ex02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import sec02.ex02.MemberVO;

public class MemberDAO {
	// context.xml 파일에 <Resource> 태그를 이용해 톰캣 실행 시 연결할 데이터베이스를 설정
	/*
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String user = "scott";
	private static final String pwd = "tiger";
	*/
	
	private Connection con;
	private PreparedStatement pstmt; 
	private DataSource dataFactory; 	// 추가
	
	// 추가
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			// connDB();
			con=dataFactory.getConnection();		// 추가	
			
			String query = "select * from t_member ";
			System.out.println(query);
			
			pstmt = con.prepareStatement(query);		// 추가	
			ResultSet rs = pstmt.executeQuery(query);
			
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void addMember(MemberVO membervo) {
		try {
			con = dataFactory.getConnection();
			String id = membervo.getId();
			String pwd = membervo.getPwd();
			String name = membervo.getName();
			String email = membervo.getEmail();
			
			String query = "insert into t_member";
			query += "(id,pwd,name,email)";
			query += "values(?,?,?,?)";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.executeUpdate();
			pstmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delMember(String id) {
		try
		{
			con = dataFactory.getConnection();
			
			String query = "delete from t_member" + "where id=?";
			System.out.println("prepareStatememt:" + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}