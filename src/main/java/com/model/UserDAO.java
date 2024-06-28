package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	
	// DAO는 불필요하게 여러 개 만들 필요가 없기 때문에
	// 객체가 한 개만 생성되도록 Singleton 형식으로 설계함

	// 1. 나 자신의 객체를 1개 생성하고 private을 붙이기
	private static UserDAO instance = new UserDAO();
	
	// 2. 직접 객체를 생성할 수 없도록 생성자에도 private을 붙이기
	private UserDAO() {
		
		// 커넥션 풀에 사용할 객체를 얻어오기
		try {
			InitialContext init = new InitialContext(); // 시작 설정 객체
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.out.println("커넥션 풀 에러");
		}
		
		
	}
	
	// 3. 객체 생성을 요구할 때 getter 메소드를 사용해서 1번의 객체를 반환시키기
	public static UserDAO getInstance() {
		return instance;
	}
	
	
	//////////////////////////////////////////////////////////////////////
	// 이 아래에다 필요한 메소드 생성하기
	
	
//	먼저 데이터베이스와 연결 - 서버 context.xml 에 커넥션 풀로 커넥션 객체 생성해서 필요없어짐 
//	public String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	public String uid = "HR";
//	public String upw = "HR";
	
	//커넥션 풀 객체 정보
	private DataSource ds;
	
	
	//부서명을 조회하는 메서드
	public ArrayList<DepartmentDTO> getList() {
		
		ArrayList<DepartmentDTO> list = new ArrayList<>();

		
		String sql = "SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NOT NULL";
		
		Connection conn = null; //연결 객체
		PreparedStatement pstmt = null; //sql문 실행 객체
		ResultSet rs = null; //결과 처리 객체
		
		try {
			//Class.forName("oracle.jdbc.OracleDriver"); //드라이버 호출 - 커넥션 객체 생성돼서 필요없어짐
			//conn = DriverManager.getConnection(url, uid, upw); //conn객체 - 커넥션 객체 생성돼서 필요없어짐
			conn = ds.getConnection(); // 데이터 소스 안에 들어 있는 커넥션 객체 뽑아다 쓰겠다는 뜻
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery(); //select구문의 실행
			
			while(rs.next()) { //다음이 있으면 true
				
				//1행에 대한 처리
				int departmentId = rs.getInt("department_id");  // ""안에 컬럼명
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locaionId = rs.getInt("location_id");
				
				//1행을 DTO에 저장
				DepartmentDTO dto = new DepartmentDTO(departmentId, departmentName, managerId, locaionId);
				
				//DTO를 리스트에 추가
				list.add(dto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();  // 반드시 적어야 함
		} finally { // 닫는 작업도 반드시 해야 함
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
			}
			
		}

		
		return list;
	}
	
	
	public DepartmentDTO getInfo(int id) {
		
			String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ?";
			
			DepartmentDTO info = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					int departmentId = rs.getInt("department_id");
					String departmentName = rs.getString("department_name");
					int managerId = rs.getInt("manager_id");
					int locationId = rs.getInt("location_id");
					
					info = new DepartmentDTO(departmentId, departmentName, managerId, locationId);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null) conn.close();
					if (pstmt != null) pstmt.close();
					if (rs != null) rs.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
		return info;
	}
	
	
	
	
	
	
	
	
	
	
}
