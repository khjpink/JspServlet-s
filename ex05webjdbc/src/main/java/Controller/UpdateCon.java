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

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//pw, 닉네임 파라미터 수집
		String id = request.getParameter("id");
		String select = request.getParameter("select");
		String data = request.getParameter("data");
		
		//jdbc
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbid = "hr";
			String dbpw = "1234";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			if(conn != null) {
				System.out.println("db연결 성공");
			}else {
				System.out.println("db연결 실패");
			}
			
			//바인드 변수로는 컬럼명을 사용할 수 없다 WEB SET NICK=? WHERE ID=?"
			//NICK이라는 특정컬럼에 값을 넣으려면 변수를 써야 한다
			String sql = "UPDATE MEMBER_WEB SET "+select+"=? WHERE ID=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, data); 
			psmt.setString(2, id); 
			
			int cnt = psmt.executeUpdate();
			
			if(cnt > 0) {
				System.out.println("회원정보 수정 완료");
				response.sendRedirect("Main.html");
			}else {
				System.out.println("회원정보 수정 실패");
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

		
	}//service메소드 
}