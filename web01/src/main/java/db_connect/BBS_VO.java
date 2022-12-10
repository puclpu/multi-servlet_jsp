package db_connect;

public class BBS_VO {
	// db테이블의 컬럼과 동일한 이름으로 만들어주자.
	// 변수명과 컬럼명을 동일하게 만들어주면
	// 나중에 알아서 가방에 값을 넣었다가 꺼냈다가를 자동으로 해준다.
	private int no;
	private String title;
	private String content;
	private String writer;
	
	public int getId() {
		return no;
	}
	public void setId(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		return "BbsVO [id=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}
	
}
