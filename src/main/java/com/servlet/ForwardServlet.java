package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/forward") // 요청 경로 

public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ForwardServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post 요청에 대한 자바 코드
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 아이디, 패스워드는 적절하게 사용하고
		System.out.println(id + ", "+pw);
		// 아이디에 해당하는 유저 정보를 담아서 화면에 보내겠다
		
		// 다음 페이지에서 사용할 일회성 데이터를 request 중간에 끼워 넣음
		request.setAttribute("name", "홍길동");
		
		// forward로 ex04로 데이터 넘김, 자바에서 forward 문법을 사용하는 법
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp"); 
		// 서블릿에선 경로 제대로 확인해서 쓸 것, /JSPBasic/forward 이게 forward 절대 경로인데 ex04의 절대 경로는 /JSPBasic/actionTag/forward_ex04
		dp.forward(request, response);
	
	}

}
