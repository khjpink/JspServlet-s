package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.MemberVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//post 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//JDBC코드시작
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("class파일 로딩 완료=런타임 동적로딩");
			
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbid = "hr";
			String dbpw = "1234";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			if(conn != null) {
				System.out.println("DB연결 성공");
			}else {
				System.out.println("DB연결 실패");
			}
			
			String sql = "SELECT * FROM MEMBER_WEB WHERE ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id); 
			//psmt.setString(2, pw);
 
			rs = psmt.executeQuery();
			
			//명령 후 처리
			if(rs.next() == true) {
				System.out.println("로그인 완료");
				String uid = rs.getString("id");
				String upw = rs.getString("pw");

				//직접만든 모델의 vo객체에 생성자로만든 id,pw바구니로 담아서 묵었다
				MemberVO vo = new MemberVO(uid, upw);
				//세션에 회원 정보가 담긴 vo 저장 , jsp에서는 내장객체라 바로 사용할 수 있었음
				HttpSession session = request.getSession();
				//MemberVO vo장바구니에 담긴 내용을 세션에 저장함
				session.setAttribute("voName", vo);  //세션이름, 세션값  
				//세션을 vo객체로 담았어도 세션은 오브젝트 타입이기 때문에 가져다쓰려면 (vo)형변환 해줘야 한다 

				session.setMaxInactiveInterval(100); 
				response.sendRedirect("index.jsp");
				
			}else {
				System.out.println("로그인 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception e 오류");
		}finally {
			// db연결 해제
			try {
				if(psmt != null) psmt.close(); 
				if(conn != null) conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}// finally 끝
		
		
	}
}
