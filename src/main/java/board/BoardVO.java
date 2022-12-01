package board;

public class BoardVO {
	private int idx;
	private String memberNickName;
	private String title;
	private String email;
	private String homePage;
	private String content;
	private String dateUpdated;
	private String hostIp;
	private int views;
	private int likes;
	private String memberMid;
	
	/* -------------- DB 설계로 생성된 필드 ------------- */
	private int day_diff; // 날짜차이계산필드(1일차이 계산필드)
	private int hour_diff;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMemberNickName() {
		return memberNickName;
	}
	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHomePage() {
		return homePage;
	}
	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDateUpdated() {
		return dateUpdated;
	}
	public void setDateUpdated(String dateUpdated) {
		this.dateUpdated = dateUpdated;
	}
	public String getHostIp() {
		return hostIp;
	}
	public void setHostIp(String hostIp) {
		this.hostIp = hostIp;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getMemberMid() {
		return memberMid;
	}
	public void setMemberMid(String memberMid) {
		this.memberMid = memberMid;
	}
	public int getDay_diff() {
		return day_diff;
	}
	public void setDay_diff(int day_diff) {
		this.day_diff = day_diff;
	}
	public int getHour_diff() {
		return hour_diff;
	}
	public void setHour_diff(int hour_diff) {
		this.hour_diff = hour_diff;
	}
	@Override
	public String toString() {
		return "BoardVO [idx=" + idx + ", memberNickName=" + memberNickName + ", title=" + title + ", email=" + email
				+ ", homePage=" + homePage + ", content=" + content + ", dateUpdated=" + dateUpdated + ", hostIp="
				+ hostIp + ", views=" + views + ", likes=" + likes + ", memberMid=" + memberMid + ", day_diff="
				+ day_diff + ", hour_diff=" + hour_diff + "]";
	}

	
}