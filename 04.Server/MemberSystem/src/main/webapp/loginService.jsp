<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
	body{
		background-color: #F4C2C2;
	}
</style>
</head>
<body>
	<%--
		ID, PW �ΰ��� ������ �޾ƿͼ�
		�α����� �Ѵ���
		�α��� ������ ����� �г��� �ֿܼ� ���
	 --%>
	<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String nick = null;

	// JDBC ����
	// 0.����̹� ���� ������Ʈ�� �ֱ�
	// 1.����̹� �����ε�	
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2.Ŀ�ؼ� ����
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";

	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	// 3. SQL�� ����
	String sql = "select * from member where id =? and pw =?";
	
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	ResultSet rs = psmt.executeQuery();
	
	if(rs.next()) {
		// �α��� ����		
		nick = rs.getString("NICK");
		
		System.out.println(nick);
	}
	
	if(rs != null)
		rs.close();
	if(psmt != null)
		psmt.close();
	if(conn != null)
		conn.close();
	
	// �α��� ������ -> loginSuccess.jsp
	// �α��� ���н� -> login.jsp
	
	if(nick!=null){
		nick = URLEncoder.encode(nick, "EUC-KR");
		response.sendRedirect("loginSuccess.jsp?nick="+nick);
	}else {
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>