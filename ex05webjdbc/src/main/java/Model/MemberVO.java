package Model;

public class MemberVO {
//id랑 pw담을 vo
//id,pw,nick을 묶을 수 있는 생성자도 만들기
	
	//필드 : 테이블 컬럼명 이랑 같게
	private String id;
	private String pw;
	private String nick;
	
	// 단축키 alt + shift + s
	//게터 세터 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}

	//Constructor 생성자 
	public MemberVO(String id, String pw, String nick) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
	}
	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	
 
}
