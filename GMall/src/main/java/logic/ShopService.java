package logic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface ShopService {
	List<Board> infiniteScrollDown(int numToStart);
	List<Board> infiniteScrollUp(int numToEnd);
	List<Board> proList();
	int centerCount(String searchType, String searchContent);
	List<Board> centerList(String searchType, String searchContent, Integer pageNum, int limit);
	void centerInsert(Board board, HttpServletRequest request);
	
	boolean insertMember(Member member); // 주한울 - 회원가입
	Member selectMember(String id); // 주한울 - 로그인을 위한 메서드
	List<Trade> tradeList(); //구정연 - 회원거래목록
}