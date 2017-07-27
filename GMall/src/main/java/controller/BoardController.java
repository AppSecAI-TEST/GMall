package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Board;
import logic.Member;
import logic.ShopService;

@Controller
public class BoardController 
{
	@Autowired
	public ShopService shopService;
	
	@RequestMapping("board/main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(new Member());
		return mav;
	}
	
	/*
	 무한스크롤 아래목록 불러오는 기능 
	*/
	@RequestMapping(value="board/infiniteScrollDown", method=RequestMethod.POST)
	public @ResponseBody List<Board> infiniteScrollDownPOST(@RequestBody Board board) {
		int numToStart = board.getBoard_no()-1;
		return shopService.infiniteScrollDown(numToStart);		
	}
	
	/*
	 무한스크롤 위목록 불러오는 기능 
	*/
	@RequestMapping(value="board/infiniteScrollUp", method=RequestMethod.POST)
	public @ResponseBody List<Board> infiniteScrollUpPOST(@RequestBody Board board) {
		int numToEnd = board.getBoard_no()+1;
		return shopService.infiniteScrollUp(numToEnd);	 	
	}	
	
	/*
	 상품 리스트 불러오는 기능 
	*/
	@RequestMapping(value="board/proList", method = RequestMethod.GET)
	public ModelAndView proList() {
		ModelAndView mav = new ModelAndView();
		List<Board> prolist = shopService.proList();
		SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdate.format(new Date());
		mav.addObject("today", today);
		mav.addObject("prolist", prolist);
		return mav;
	}
	
	/*
	  고객센터 목록 기능
	  String allsubject = "";
		for(int i=0; i<listcount; i++)
		{
			String[] subject = new String[listcount];
			Board a = centerlist.get(i);
			subject[i] = a.getSubject();
			allsubject += subject[i] + ",";
		}
	*/
	@RequestMapping("board/centerList")
	public ModelAndView centerList(Board board, Integer pageNum, String searchType, String searchContent, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Member member = (Member)request.getSession().getAttribute("LOGIN_MEMBER");
		String userid = member.getId();
		String password = request.getParameter("password");
		String num = request.getParameter("num");	
		String pageNum2 = request.getParameter("pageNum2");
		String searchType2 = request.getParameter("searchType2");
		String searchContent2 = request.getParameter("searchContent2");
		
		if(pageNum == null || pageNum.toString().equals(""))
		{
			pageNum = 1;
		}
		Integer pageNum3 = null;
		if(pageNum2 == null)
		{
			pageNum2 = "";
		}
		else if(pageNum2 != null)
		{
			pageNum3 = Integer.parseInt(pageNum2);
		}
		int limit = 20;
		if(pageNum3 == null || searchType2 == null || searchContent2 == null)
		{
			int listcount = shopService.centerCount(searchType, searchContent);
			List<Board> centerlist = shopService.centerList(searchType, searchContent, pageNum, limit);
			int maxpage = (int)((double)listcount/limit + 0.95);
			int startpage = (((int)((double)pageNum/10 + 0.9)) -1) * 10 + 1;
			int endpage = startpage + 9;
			if(endpage > maxpage)
			{
				endpage = maxpage;
			}
			mav.addObject("maxpage", maxpage);
			mav.addObject("startpage", startpage);
			mav.addObject("endpage", endpage);
			mav.addObject("listcount", listcount);
			mav.addObject("centerlist", centerlist);
			SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd");
			String today = sdate.format(new Date());
			mav.addObject("today", today);
			mav.addObject("pageNum", pageNum);
			mav.addObject("num", num);
			mav.addObject("password", password);
			mav.addObject("userid", userid);
			
			Board board1 =  shopService.passthrough(num);
			if(board1 != null && !board1.getPass().equals(password))
			{
				mav.setViewName("alert");
				mav.addObject("url", "../board/centerList.mall");
				mav.addObject("msg", "비밀번호를 잘못입력하셨습니다.");
				return mav;
			}
		}
		else if(pageNum3 != null || searchType2 != null && searchContent != null)
		{
			int listcount = shopService.centerCount(searchType2, searchContent2);
			List<Board> centerlist = shopService.centerList(searchType2, searchContent2, pageNum3, limit);
			int maxpage = (int)((double)listcount/limit + 0.95);
			int startpage = (((int)((double)pageNum/10 + 0.9)) -1) * 10 + 1;
			int endpage = startpage + 9;
			if(endpage > maxpage)
			{
				endpage = maxpage;
			}
			mav.addObject("maxpage", maxpage);
			mav.addObject("startpage", startpage);
			mav.addObject("endpage", endpage);
			mav.addObject("listcount", listcount);
			mav.addObject("centerlist", centerlist);
			mav.addObject("searchType2", searchType2);
			mav.addObject("searchContent2", searchContent2);
			SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd");
			String today = sdate.format(new Date());
			mav.addObject("today", today);
			mav.addObject("pageNum", pageNum);
			mav.addObject("num", num);
			mav.addObject("password", password);
			mav.addObject("userid", userid);
			
			Board board1 =  shopService.passthrough(num);
			if(board1 != null && !board1.getPass().equals(password))
			{
				mav.setViewName("alert");
				mav.addObject("url", "../board/centerList.mall?pageNum=" + pageNum2 + "&searchType=" + searchType2 + "&searchContent=" + searchContent2);
				mav.addObject("msg", "비밀번호를 잘못입력하셨습니다.");
				return mav;
			}
		}
		return mav;
	}
	
	/*
	  고객센터 글 추가 기능
	*/
	@RequestMapping("board/centerAdd")
	public ModelAndView centerAdd(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Member member = (Member)request.getSession().getAttribute("LOGIN_MEMBER");
		String userid = member.getId();
		mav.addObject(new Board());
		mav.addObject("userid", userid);
		return mav;
	}
	
	/*
	 고객센터 글 작성 기능
	*/
	@RequestMapping("board/centerwrite")
	public ModelAndView centerwrite(@Valid Board board, BindingResult bindingResult, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("board/centerAdd");
		/*if(request.getSession().getAttribute("LOGIN_MEMBER") != null)
		{
			shopService.centerInsert(board, request);
		}
		else
		{
			mav.setViewName("redirect:/board/centerList.mall");
		}*/
		if(bindingResult.hasErrors())
		{
			bindingResult.reject("error.input.user");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		shopService.centerInsert(board, request);
		mav.setViewName("redirect:/board/main.mall");
		return mav;
	}
	
	/*
	  파일다운 기능 
	*/
	@RequestMapping("board/filedown")
	public void filedown(String filename, HttpServletRequest request, HttpServletResponse response) {
		String filepath = request.getServletContext().getRealPath("/") + "/fileupload/" + filename;
		byte[] buf = new byte[4096];
		FileInputStream fis = null;
		OutputStream out = null;
		try
		{
			fis = new FileInputStream(filepath);
			out = response.getOutputStream(); 
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment; filename=" + new String(filename.getBytes("euc-kr"),"8859_1"));
			int readcnt = 0;
			while((readcnt = fis.read(buf)) != -1)
			{
				out.write(buf, 0, readcnt);
			}
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(fis != null)
				{
					fis.close();
				}
				if(out != null)	
				{
					out.flush();
					out.close();
				}
			}
			catch(IOException e)
			{
				
			}
		}
	}
	
	/*
	  업데이트폼
	*/
	@RequestMapping("board/updateForm")
	public ModelAndView updateForm(int num, Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		Board board = shopService.getBoard(num);
		mav.addObject("board", board);
		mav.addObject("pageNum", pageNum);	
		return mav;
	}
	
	/*
	  업데이트 기능 
	*/
	@RequestMapping("board/update")
	public ModelAndView update(@Valid Board board, BindingResult bindingResult, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String pass = shopService.getBoardPassword(board.getBoard_no());
		System.out.println("pass:"+pass);
		if(!pass.equals(board.getPass()))
		{
			mav.setViewName("board/updateForm");
			if(!board.getPass().equals(""))
			{
				bindingResult.rejectValue("pass", "error.board.password");
			}
			return mav;
		}
		if(board.getImg1().isEmpty())
		{
			board.setFileurl(request.getParameter("filep"));
		}
		else 
		{
			board.setFileurl(board.getImg1().getOriginalFilename());
		}
		if(board.getImg2().isEmpty())
		{
			board.setFileurl2(request.getParameter("filep2"));
		}
		else 
		{
			board.setFileurl2(board.getImg2().getOriginalFilename());
		}
		if(board.getImg3().isEmpty())
		{
			board.setFileurl3(request.getParameter("filep3"));
		}
		else 
		{
			board.setFileurl3(board.getImg3().getOriginalFilename());
		}
		shopService.boardUpdate(board, request);
		mav.addObject("board", board);
		mav.setViewName("redirect:/board/centerList.mall?pageNum=" + request.getParameter("pageNum"));
		return mav;
	}
	
}