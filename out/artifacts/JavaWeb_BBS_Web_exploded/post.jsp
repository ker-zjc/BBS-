<%@ page import="dao.BoardDao" %>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8, target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title></title>
		<link rel="stylesheet" href="css/post1.css"/>
	</head>
	<body>
	<div id="bigBox">
			<table>
				<tr>
					<td>
						<h1>��֪��~������~~</h1>
					</td>
				</tr>
			</table>
		<%
		if(session.getAttribute("user")==null){
		%>
		<div>
			����δ<a href="login.jsp">��¼</a>|<a href="reg.jsp">ע��</a>
		</div>
		<%
		} else{
		%>
		<div style="text-align: left">
			${sessionScope.user.userName},��ӭ�㣡
		</div>
		<% }%>
		<%
			int boardId = (int) session.getAttribute("boardId");
			BoardDao boardDao = (BoardDao) session.getAttribute("boardDao");
		%>
		<p>
			>>><a href="index.jsp">��̳��ҳ</a>>><a href="/s/list?boardId=<%= boardId%>"><%= boardDao.findBoard(boardId).getBoardName()%></a>
		</p>

		<table>
			<tr>
				<td>
					<h2>��������</h2>
				</td>
			</tr>
		</table>
		<form action="/s/post" method="post">
			<table>
				<tr>
					<td><h4>����</h4></td><td><textarea rows="2" cols="43" type="text" name="title"/></textarea></td>
				</tr>
				<tr>
					<td><h4>����</h4></td><td><textarea rows="15" cols="43" name="content"></textarea></td>
				</tr>
				<tr>
					<td></td><td>�����ܴ��ڣ�1000�֣�</td>
				</tr>
				<tr>
					<td align="center"><input type="submit" name="�ύ"></td><td><input type="reset" name="����"></td>
				</tr>
			</table>
		</form>
	</div>
	</body>
</html>