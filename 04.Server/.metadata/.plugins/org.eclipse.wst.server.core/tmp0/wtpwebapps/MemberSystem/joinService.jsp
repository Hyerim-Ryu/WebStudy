<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<%
		// �Ѿ�� �����͸� �������� JDBC�� ���� ���̺��� �� �ֱ� (ȸ������)
		// �������� �Ѿ���� ������
		// id, pw, nick, email, phone, gender, age
	
		request.setCharacterEncoding("EUC-KR");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
	
	
				
		
			// JDBC ����
			// 0.����̹� ���� ������Ʈ�� �ֱ�
			// 1.����̹� �����ε�	
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			// 2.Ŀ�ؼ� ����
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			
			Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
			// 3.SQL�� ����
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			PreparedStatement psmt = conn.prepareStatement(sql);
	
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			psmt.setString(4, email);
			psmt.setString(5, phone);
			psmt.setString(6, gender);
			psmt.setInt(7, age);
	
			psmt.executeUpdate();
		
			// 4.��������
	
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
	
			// ����
			// ȸ������ �� main �������� ���ư��� ����� �ϼ��Ͻÿ�
			response.sendRedirect("main.jsp");
		
	%>
</body>
</html>