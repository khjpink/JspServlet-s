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

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//post 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		//JDBC코드시작
		//lib에 jar파일 넣고
		//예외처리 
		//		: 컴파일오류 : 문법오류, 실행전 알 수 있는 얼 
		//		: 런타임오류 : 실행 해야 알 수 있음	flie불러오기,네트워크연결,db연결
		//					try-cathc문으로 오류잡음

		// try문 안에서 쓴 지역변수는 finally에서 쓸 수 없기 때문에 객체를 전역변수로 작성 
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			// 오라클 lib파일이 db와 연결할 수 있게 Class를 실행
			// 런타임 동적로딩 : JVM에 읽어들일 수 있도록 코드를 실행하는 순간에 필요한 클래스 로딩하면
			// ->JDBC드라이버에 로드되어서 드라이브 매니저에 등록됨
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("class파일 로딩 완료=런타임 동적로딩");
			
			//드라이버 매니저 연결하기 (어떤db,어떤 id,pw)
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbid = "hr";
			String dbpw = "1234";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			if(conn != null) {
				System.out.println("DB연결 성공");
			}else {
				System.out.println("DB연결 실패");
			}
			
			//sql 명령문 
			//? : 바인드 변수, 받아오는 값으로 데이터를 넣겠다 
			String sql = "INSERT INTO MEMBER_WEB VALUES(?,?,?)";
			
			//sql문을 실행하는데 conn연결객체에 준비시켜서 psmt.executeUpdate()객체가 실행되기 전에
			//값을 setString해줌
			psmt = conn.prepareStatement(sql);

			//바인드 변수로 값을 채울때는 인덱스 번호가 1부터 시작한다
			//psmt.setString("id", id); // 인덱스번호 or "컬럼이름id" , 값
			psmt.setString(1, id);  // 첫번째 자리에 id넣기 
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			
			// executeUpdate : insert, update, delete, create 같이 데이터 변화 생기는 쿼리문에 쓴다
			// executeQeruty : selete
			//실행된 레코드 수(몇줄이 바꼈는지)가 반환되는데, 실행되면 1, 아니면 0 
			int cnt = psmt.executeUpdate();
			
			//명령 후 처리
			if(cnt > 0) {
				System.out.println("회원가입 완료");
				response.sendRedirect("Main.html");
			}else {
				System.out.println("회원가입 실패");
			}

		 // 익셉션 : 클래스 못찾거나, sql구문 오류, 다 확인하다보니 오류처리가 오래걸림
		} catch (Exception e) {
			//e.printStackTrace(); : 오류 내용 출력
			e.printStackTrace();
		}//catch끝
		finally {
			// db연결 해제
			try {
				if(psmt != null) psmt.close(); //중괄호 생략
				if(conn != null) conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}// finally 끝
	}

}
