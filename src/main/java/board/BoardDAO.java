package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;

public class BoardDAO {
	// 싱글톤을 이용한 DB연결 객체 연결하기...
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	BoardVO vo = null;

	//전체() 레코드 건수 구하기
	public int totRecCnt() {
		int totRecCnt = 0;
		try {
			sql = "SELECT count(*) cnt FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 무조건 나올 때 if
			rs.next();
			
			totRecCnt = rs.getInt("cnt");
			
			
		} catch (SQLException e) {
			System.out.println("totRecCnt() sql 에러"+e.getMessage());
		}
		finally {
			getConn.rsClose();
		}
		return totRecCnt;
	}
	// 전체 게시글 가져오기
	public ArrayList<BoardVO> getBoList(int startIndexNo, int pageSize) {
		ArrayList<BoardVO> vos = new ArrayList<>();
		try {
			sql = "SELECT *, datediff(now(), date_updated) day_diff FROM board ORDER BY idx DESC limit ?, ?";
			/*
			 * sql = "SELECT *, datediff(now(), date_updated) day_diff," +
			 * "timestampdiff(hour, date_updated, now()) hour_diff" +
			 * "FROM board ORDER BY idx DESC limit ?, ?";
			 */
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startIndexNo);
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new BoardVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMemberMid("member_mid");
				vo.setMemberNickName(rs.getString("member_nickName"));
				vo.setTitle(rs.getString("title"));
				vo.setEmail(rs.getString("email"));
				vo.setHomePage(rs.getString("homePage"));
				vo.setContent(rs.getString("content"));
				vo.setDateUpdated(rs.getString("date_updated"));
				vo.setHostIp(rs.getString("hostIp"));
				vo.setViews(rs.getInt("views"));
				vo.setLikes(rs.getInt("likes"));
				
				vo.setDay_diff(rs.getInt("day_diff"));
//				vo.setHour_diff(rs.getInt("hour_diff"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("1111SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		
		return vos;
	}
	
	//게시글 내용 DB에 저장하기
	public int setBoInputOk(BoardVO vo) {
		int res = 0;
		
		try {
			sql="INSERT INTO board VALUES(default,?,?,?,?,?,?,default,?,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberMid());
			pstmt.setString(2, vo.getMemberNickName());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getHomePage());
			pstmt.setString(6, vo.getContent());
			pstmt.setString(7, vo.getHostIp());
			pstmt.executeUpdate();
			res=1;
		} catch (SQLException e) {
			System.out.println("2222SQL 에러 : " + e.getMessage());
		}finally {
			getConn.pstmtClose();
		}
		
		return res;
	}
	// 개별 자료 검색
	public BoardVO getBoContentSearch(int idx) {
		try {
			sql = "SELECT * FROM board WHERE idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			vo = new BoardVO();
			vo.setIdx(rs.getInt("idx"));
			vo.setMemberMid("member_mid");
			vo.setMemberNickName(rs.getString("member_nickName"));
			vo.setTitle(rs.getString("title"));
			vo.setEmail(rs.getString("email"));
			vo.setHomePage(rs.getString("homePage"));
			vo.setContent(rs.getString("content"));
			vo.setDateUpdated(rs.getString("date_updated"));
			vo.setHostIp(rs.getString("hostIp"));
			vo.setViews(rs.getInt("views"));
			vo.setLikes(rs.getInt("likes"));
		} catch (SQLException e) {
			System.out.println("getBoContentSearch SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		
		return vo;
	}
	public void setViewPlus(int idx) {
		try {
			sql = "update board set views = views + 1 WHERE idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("getBoContentSearch SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
	}
	
	// 좋아요 횟수 증가 처리
	public void setBoLike(int idx) {
		try {
			sql = "update board set likes = likes + 1 WHERE idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("getBoContentSearch SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
	}
}
