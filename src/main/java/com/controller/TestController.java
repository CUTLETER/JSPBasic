package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//	서블릿
//	1. 확장자 패턴 *.do
@WebServlet("*.test")

public class TestController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public TestController() {
		
	}
	
//  2. get요청, post요청 하나로 모으기	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

// 3. 들어온 요청을 나누기	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI(); // IP 주소와 포트 번호가 제외된 주소
		String path = request.getContextPath(); // 프로젝트 구분하는 경로? 이름?
		
		String command = uri.substring(path.length());
		System.out.println(command);
		
		if(command.equals("/controller/signup.test")) {
			// 가입 요청 처리
		} else if (command.equals("/controller/login.test")) {
			// 로그인 요청 처리
		}
		
		
		
	}

	
	
}
