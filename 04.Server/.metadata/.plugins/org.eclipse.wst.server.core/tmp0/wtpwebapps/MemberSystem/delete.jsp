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
	<div id="wrap">
		<h2>ȸ��Ż��������</h2>
		<form action="deleteService.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" name="pw"></td>
			</tr>			
			<tr>
				<td colspan="2">
					<input type="submit" value="ȸ��Ż��">
					<input type="reset">
				</td>
			</tr>
			
		</table>
		</form>
	</div>
</body>
</html>