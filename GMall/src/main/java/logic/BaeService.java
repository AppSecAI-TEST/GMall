package logic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

//배기수
public interface BaeService {
	List<Product> infiniteScrollDown(int numToStart, String category); //배기수 - 상품 리스트 무한스크롤 아래목록 가져옴
	List<Product> infiniteScrollUp(int numToEnd, String category); //배기수 - 상품 리스트 무한스크롤 위목록 가져옴
	List<Product> priminfiniteScrollDown(int numToStart, String category); //배기수 - 프리미엄 리스트 무한스크롤 아래목록 가져옴
	List<Product> priminfiniteScrollUp(int numToEnd, String category); //배기수 - 프리미엄 리스트 무한스크롤 위목록 가져옴
	List<Product> highinfiniteScrollDown(int priceStart, String category); //배기수 - 높은가격 리스트 무한스크롤 아래목록 가져옴
	List<Product> highinfiniteScrollUp(int priceEnd, String category); //배기수 - 높은가격 리스트 무한스크롤 위목록 가져옴
	List<Product> lowinfiniteScrollDown(int priceStart, String category); //배기수 - 낮은가격 리스트 무한스크롤 아래목록 가져옴
	List<Product> lowinfiniteScrollUp(int priceEnd, String category); //배기수 - 낮은가격 리스트 무한스크롤 위목록 가져옴
	List<Product> proList(String category); //배기수 - 상품리스트 가져옴
	List<Product> premiumList(String category); //배기수 - 프리미엄 리스트 가져옴
	List<Product> highPriceList(String category); //배기수 - 높은가격 리스트 가져옴
	List<Product> lowPriceList(String category); //배기수 - 낮은가격 리스트 가져옴
	
	int centerCount(String searchType, String searchContent); //배기수 - 고객센터 검색된 내용 가져옴
	List<Board> centerList(String searchType, String searchContent, Integer pageNum, int limit); //배기수 - 고객센터 목록 가져옴
	void centerInsert(Board board, HttpServletRequest request); //배기수 - 고객센터 내용 입력
	Board passthrough(String num); //배기수 - 글번호에 해당하는 정보를 가져옴
	Board getBoard(int num); //배기수 - 번호에 해당하는 게시글을 가져옴 
	String getBoardPassword(int board_no); //배기수 - 번호에 해당하는 패스워드를 가져옴
	void boardUpdate(Board board, HttpServletRequest request); //배기수 - 글 업데이트 기능
	void boardDelete(int num);//배기수 - 글 삭제 기능
	void boardAnswer(Board board, HttpServletRequest request); //배기수 - 답변 기능
	//int qnaCount(String searchType, String searchContent); //배기수 - qna 검색된 내용 가져옴
	
	
}