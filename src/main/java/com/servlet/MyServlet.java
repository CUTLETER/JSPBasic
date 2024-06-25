package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


//		서블릿 : 클라이언트로부터 요청을 받을 수 있는 자바 클래스


//	서블릿을 연결하는 방법 1. 어노테이션
@WebServlet("/apple")

public class MyServlet extends HttpServlet {

	/*
	 * 서블릿 버전 1
	 */
	
	private static final long serialVersionUID = 1L; // 시리얼 버전 명시

	// 2개의 메소드를 오버라이딩
	// doGet, doPost
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 모든 자바 코드 다 쓸 수 있음
		System.out.println("hello world?");
		
		//브라우저로 출력하기
		resp.setContentType("text/html; charset=UTF-8;"); //  한글 출력 시 깨지지 않게끔
		PrintWriter out = resp.getWriter();
		out.println("hello 월드 >_<");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
