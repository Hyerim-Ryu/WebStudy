<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
	body{
		background-color: #F4C2C2;
	}
	#wrap{
		width: 70%;
		height: 500px;
		margin: auto;	
	}
	.menu{
		border: 5px double black;
		margin: auto;
		text-align: center;
		width: 18%;
		height: 200px;
		float: left;
		font-size: 30px;
		line-height: 200px;
	}
	.menu:hover{
		background-color: gray;
	}

</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<a href="join.jsp"><div class="menu">ȸ������</div></a>
		<a href="login.jsp"><div class="menu">�α���</div></a>
		<a href="update.jsp"><div class="menu">ȸ����������</div></a>
		<a href="select.jsp"><div class="menu">ȸ����Ϻ���</div></a>
		<a href="delete.jsp"><div class="menu">ȸ��Ż��</div></a>
	</div>
</body>
</html>