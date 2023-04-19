<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
		// 디비에 저장된 모든 회원의 정보를 출력
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		
		// 1. 드라이버 로드
		Class.forName(DRIVER);
		// 2. 디비연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		// 3. SQL작성 & pstmt 객체
		String sql = "select * from itwill_member";
		PreparedStatement pstmt = con.prepareStatement(sql);
		// 4. sql 실행
		ResultSet rs = pstmt.executeQuery();
		// 5. 데이터처리
		
		JSONArray jsonArr = new JSONArray(); // arrayList 역활
		
		
		while(rs.next()){
			// rs -> DTO -> List
			
			JSONObject dto = new JSONObject();
			
			dto.put("id", rs.getString("id"));
			dto.put("email", rs.getString("email"));
			dto.put("regdate", rs.getTimestamp("regdate")+""); // toString() 사용가능
			 
			jsonArr.add(dto);
		}	
	%>
	<%=jsonArr %>	
	
	
	
	
	
	
	
	
	
	
	
	
