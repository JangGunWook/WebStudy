package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;
import com.smhrd.model.Script;
import com.smhrd.model.WebMember;


// *.do -> 어떤 페이지가 요청을 하더라도 요청시 .do가 달려있다면
// frontcontroller에서 모든 요청을 받을 수 있다!
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// FrontController 역할
		// : 클라이언트가 어떤 요청을 하더라도 가장 먼저
		//	 요청을 받는 서블릿
		// http://localhost:8090/MessageSystem/goMain.do
		
		// 1. 클라이언트 요청 받아오기!
			request.setCharacterEncoding("utf-8");
		
		String uri	= request.getRequestURI();
		System.out.println("요청된 uri : " + uri);
		
		
		// 2. 어떤 요청이 들어왔는지 판단 하기!
		String contextpath = request.getContextPath();
		System.out.println("프로젝트명 : " + contextpath);
		
		// 요청된  서블릿의 이름만 가져오기
		String result = uri.substring(contextpath.length());
		System.out.println("요청이름 : " + result);
		
		
		String moveurl = "";
		// 3. 실제 해당하는 기능이 수행되도록 연결하기!
		if(result.equals("/goMain.do")) {
			// 메인으로 이동할 수 있는 기능 작성
			moveurl = "WEB-INF/Main.jsp";
			
		}else if(result.equals("/goBoard.do")) {
			
			moveurl = "WEB-INF/BoardMain.jsp";
			
		}else if(result.equals("/goWrite.do")) {
			
			moveurl ="WEB-INF/BoardWrite.jsp";
			
		}else if(result.equals("/BoardService.do")) {
			String path = request.getServletContext().getRealPath("file");
			
			// 저장하고자 하는 파일의 최대 크기를 지정 -> 10mb
			int maxSize = 1024 * 1024 * 10;
			
			// 인코딩
			String encoding = "utf-8";
			
			MultipartRequest multi = new MultipartRequest(request, 
					path,
					maxSize, 
					encoding,
					new DefaultFileRenamePolicy()
					);
			// new DefaultFileRenamePolicy()
			// -> 파일 업로드시 중복되는 이름을 방지할 수 있는 객체
			
			
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer");
			String img = multi.getFilesystemName("filename");
			String content = multi.getParameter("content");
			
			System.out.println(title);
			System.out.println(writer);
			System.out.println(img);
			System.out.println(content);
			
			if(img==null) {
				img = "blank";
			}
			
			
			Board board = new Board();
			board.setTitle(title);
			board.setWriter(writer);
			board.setFilename(img);
			board.setContent(content);
			
			
			BoardDAO dao = new BoardDAO();
			int cnt = dao.write(board);
			
			if(cnt>0) {
				Script.href("전송성공", "ShowBoardService.do", response);
				
			}else {
				Script.href("전송실패", "goWrite.do", response);
			}
		}else if(result.equals("/GoUpdate.do")) {
			moveurl = "WEB-INF/UpdateMember.jsp";
			
		}else if(result.equals("/JoinProgram.do")) {
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			
			WebMember member = new WebMember(email,pw,address,phone); 
			
			MemberDAO dao = new MemberDAO();
			
			int cnt = dao.join(member);
		
			
			if(cnt>0) {
				request.setAttribute("email", email);
				moveurl = "WEB-INF/JoinSuccess.jsp";
				
			}else {
				
				moveurl = "WEB-INF/Main.jsp";
				
			}
		}else if(result.equals("/LoginService.do")) {
			
			  LoginService service = new LoginService();
		         service.execute(request, response);
		}else if(result.equals("/Delete.do")) {
			 String num =  request.getParameter("num");
				
				MessageDAO dao = new MessageDAO();
				int cnt = dao.delete(num);
				
				
				if(cnt>0) {
					Script.href("삭제를 성공하였습니다","goMain.do", response);
					
					
				}else {
					Script.href("삭제를 실패하였습니다","goMain.do", response);
				}
		}else if(result.equals("/DetailService.do")) {
			// 사용자가 몇번째 개시글을 선택했는지 선택했는지
			// 해당 값을 가져와 detail.jsp에 뛰워 주기
			
			String num = request.getParameter("num");
			
			BoardDAO dao = new BoardDAO();
			
			Board board = dao.detail(num);
			
			request.setAttribute("board", board);
			
			moveurl = "WEB-INF/BoardDetail.jsp";
			
		}else if(result.equals("/MemberService.do")) {
			MemberDAO dao = new MemberDAO();
			
			
			
			List<WebMember> list= dao.showmember();
			
			ArrayList<WebMember> showmember = (ArrayList<WebMember>)list;
			
			HttpSession session = request.getSession();
			session.setAttribute("showmember", showmember);
			
			
			moveurl = "WEB-INF/ShowMember.jsp";
			
		}else if(result.equals("/MessageService.do")) {
			String receiveEmail = request.getParameter("receiveEmail");
			String sendName = request.getParameter("sendName");
			String message = request.getParameter("message");
			
			
			MessageDAO dao = new MessageDAO();
			Message msg = new Message();
			msg.setMessage(message);
			msg.setReceiveEmail(receiveEmail);
			msg.setSendName(sendName);
			
			int cnt = dao.insertMsg(msg);
			
			if(cnt>0) {
			
				Script.href("전송성공","goMain.do", response);
			}else {
				Script.href("전송실패","goMain.do", response);
				
			}
		}else if(result.equals("/ShowBoardService.do")) {
			BoardDAO dao = new BoardDAO();
			
			
			ArrayList<Board> showboard = dao.showboard();
			
			
			
			
			request.setAttribute("showboard", showboard);
			System.out.print("SHOWBOARD : " + showboard);
			HttpSession session = request.getSession();
			session.setAttribute("showboard", showboard);
			moveurl = "WEB-INF/BoardMain.jsp";
			
			
		}else if(result.equals("/ShowMessageService.do")) {
			MessageDAO dao = new MessageDAO();
			
			HttpSession session = request.getSession();
			WebMember info = (WebMember)session.getAttribute("info");
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json;charset=UTF-8");
			
			Gson gson = new Gson();
			
			
			ArrayList<Message>list = dao.showMessage(info.getEmail());
			
			String showmessage = gson.toJson(list);
			
			PrintWriter out = response.getWriter();

			out.print(showmessage);
		}else if(result.equals("/UpdateService.do")) {
			HttpSession session = request.getSession();
			WebMember info = (WebMember)session.getAttribute("info");
			String email = info.getEmail();
			
			System.out.println(email);
			
			String pw = request.getParameter("pw");
			String phone =request.getParameter("phone");
			String address =request.getParameter("address");
			
			WebMember member = new WebMember(email,pw,phone,address);
			
			MemberDAO dao = new MemberDAO();
			
			int cnt = dao.update(member);
			
			if(cnt>0) {
				moveurl = "WEB-INF/Main.jsp";
				
			}
		}
		
		// 공통적으로 이동
		RequestDispatcher rd = request.getRequestDispatcher(moveurl);
		rd.forward(request, response);
	}

}
