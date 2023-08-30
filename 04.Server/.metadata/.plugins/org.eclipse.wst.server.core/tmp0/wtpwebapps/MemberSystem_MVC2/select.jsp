<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
	#wrap, h2, table{
		margin: auto;
		text-align: center;
	}
	body{
		background-color: #F4C2C2;
	}
</style>
</head>
<body>
	<%
		MemberDAO dao = new MemberDAO();
	
		ArrayList<MemberDTO> list = dao.select();
		
		//System.out.println("����ȸ�� �� : "+list.size());
	
	%>
	
	<table>
		<tr>
			<th>��ȣ</th>
			<th>���̵�</th>
			<th>�г���</th>
			<th>�̸���</th>
			<th>��ȭ��ȣ</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<!-- ���� ���� list ũ�⸸ŭ �ݺ��� ���鼭 ȸ���� ������ ��� -->
		<%
			for(int i=0; i<list.size(); i++){
				out.print("<tr>");
				out.print("<td>" + (i+1) + "</td>");
				out.print("<td>" + list.get(i).getId() + "</td>");
				out.print("<td>" + list.get(i).getNick() + "</td>");
				out.print("<td>" + list.get(i).getEmail() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getGender() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				out.print("</tr>");
				
			}
		%>
	</table>
</body>
</html>