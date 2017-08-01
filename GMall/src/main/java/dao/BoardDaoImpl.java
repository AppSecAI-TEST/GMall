package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.BoardDao;
import dao.mapper.BoardMapper;
import logic.Board;
import logic.Product;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private SqlSessionTemplate sqlSession; 
	private final String NS = "dao.mapper.BoardMapper."; 
	
	@Override
	public List<Product> infiniteScrollDown(int numToStart, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("numToStart", numToStart);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"infiniteScrollDown", paramMap);
	}

	@Override
	public List<Product> infiniteScrollUp(int numToEnd, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("numToEnd", numToEnd);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"infiniteScrollUp", paramMap);
	}
	
	@Override
	public List<Product> priminfiniteScrollDown(int numToStart, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("numToStart", numToStart);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"priminfiniteScrollDown", paramMap);
	}

	@Override
	public List<Product> priminfiniteScrollUp(int numToEnd, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("numToEnd", numToEnd);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"priminfiniteScrollUp", paramMap);
	}
	
	@Override
	public List<Product> highinfiniteScrollDown(int priceStart, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("priceStart", priceStart);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"highinfiniteScrollDown", paramMap);
	}

	@Override
	public List<Product> highinfiniteScrollUp(int priceEnd, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("priceEnd", priceEnd);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"highinfiniteScrollUp", paramMap);
	}
	
	@Override
	public List<Product> lowinfiniteScrollDown(int priceStart, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("priceStart", priceStart);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"lowinfiniteScrollDown", paramMap);
	}

	@Override
	public List<Product> lowinfiniteScrollUp(int priceEnd, String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("priceEnd", priceEnd);
    	paramMap.put("category", category);
		return sqlSession.selectList(NS+"lowinfiniteScrollUp", paramMap);
	}
	
	@Override
	public List<Product> proList(String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		System.out.println("category : " + category);
    	paramMap.put("category", category);
    	return sqlSession.selectList(NS+"proList", paramMap);
	}
	
	@Override
	public List<Product> premiumList(String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		System.out.println("category : " + category);
    	paramMap.put("category", category);
    	return sqlSession.selectList(NS+"premiumList", paramMap);
	}
	
	@Override
	public List<Product> highPriceList(String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		System.out.println("category : " + category);
    	paramMap.put("category", category);
    	return sqlSession.selectList(NS+"highPriceList", paramMap);
	}
	
	@Override
	public List<Product> lowPriceList(String category) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		System.out.println("category : " + category);
    	paramMap.put("category", category);
    	return sqlSession.selectList(NS+"lowPriceList", paramMap);
	}
	
	@Override
	public int centerCount(String searchType, String searchContent) {
		return sqlSession.selectOne(NS+"centerCount");
	}
	
	@Override
	public List<Board> centerList(String searchType, String searchContent, Integer pageNum, int limit) {
		int startrow = (pageNum - 1) * limit;
    	int endrow = startrow + limit;  	
    	Map<String, Object> paramMap = new HashMap<String, Object>();
    	paramMap.put("startrow", startrow);
    	paramMap.put("endrow", endrow);
    	paramMap.put("searchType", searchType);
    	paramMap.put("searchContent", searchContent);
    	return sqlSession.selectList(NS+"centerList", paramMap);
	}

	@Override
	public int getMaxNum(int typenum) {
		return sqlSession.getMapper(BoardMapper.class).getMaxNum(typenum);
	}

	@Override
	public void centerInsert(Board board) {
		sqlSession.getMapper(BoardMapper.class).centerInsert(board);
	}

	@Override
	public Board passthrough(String num) {
		/*Map<String, String> paramMap = new HashMap<String, String>();
    	paramMap.put("num", num);*/
    	return sqlSession.getMapper(BoardMapper.class).passthrough(num);
	}

	@Override
	public Board getBoard(int num) {
    	return sqlSession.getMapper(BoardMapper.class).getBoard(num);
	}

	@Override
	public String getBoardPassword(int board_no) {
		return sqlSession.getMapper(BoardMapper.class).getBoardPassword(board_no);
	}

	@Override
	public void boardUpdate(Board board) {
		sqlSession.getMapper(BoardMapper.class).boardUpdate(board);
	}

	@Override
	public void boardDelete(int num) {
		sqlSession.getMapper(BoardMapper.class).boardDelete(num);
	}

	@Override
	public void boardAnswer(Board board) {
		sqlSession.getMapper(BoardMapper.class).boardAnswer(board);
	}

	
	
	
	
}