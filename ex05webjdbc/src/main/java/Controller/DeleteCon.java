package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//post인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 수집
		String id = request.getParameter("id");
		
		//jdbc연결---
		//객체 만들기
		Connection conn = null;
		PreparedStatement psmt = null;
		

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbid = "hr";
			String dbpw = "1234";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			if(conn != null) {
				System.out.println("DB연결 성공");
			}else {
				System.out.println("DB연결 실패");
			}
			
			String sql = "DELETE FROM MEMBER_WEB WHERE ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			 
			int cnt = psmt.executeUpdate();
			if(cnt > 0) {
				System.out.println("회원 삭제 성공");
				//회원삭제후 메인으로 이동 
				response.sendRedirect("Main.html");
			}else {
				System.out.println("회원 삭제 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(psmt != null) psmt.close();
				if(conn != null) conn.close();				
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}

		
		
		
	}//service메소드 끝
}
