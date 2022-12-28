<%@ page import="dao.BoardDao" %>
<%@ page import="dao.TopicDao" %>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8, target-densitydpi=low-dpi" />
		<meta id="viewport" name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title></title>
		<link rel="stylesheet" href="css/reply1.css"/>
	</head>
	<body class="login-bg">
		<div id="bigBox">
			<table>
				<tr>
					<td>
						<h1>У԰��֪��~</h1>
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
			int topicId = (int) session.getAttribute("topicId");
			BoardDao boardDao = (BoardDao) session.getAttribute("boardDao");
			TopicDao topicDao = (TopicDao) session.getAttribute("topicDao");
		%>
		<p>
			>>><a href="index.jsp">��̳��ҳ</a>>><a href="/s/list?boardId=<%= boardId%>"><%= boardDao.findBoard(boardId).getBoardName()%></a>>><a href="detail?boardId=<%= boardId%>&topicId=<%= topicId%>"><%= topicDao.findTopic(topicId).getTitle()%></a>
		</p>

			<table>
				<tr>
					<td>
						<h2>�ظ�����</h2>
					</td>
				</tr>
			</table>
		<form action="/s/reply" method="post">
			<table>
				<tr>
					<td><h4>����</h4></td><td><textarea rows="1" cols="30" name="title"></textarea></td>
				</tr>
				<tr>
					<td><h4>����</h4></td><td><textarea rows="5" cols="30" name="content"></textarea></td>
				</tr>
				<tr>
					<td></td><td>�����ܴ��ڣ�1000�֣�</td>
				</tr>
				<tr>
					<td align="left"><input TYPE="submit" name="�ύ"><td align="right"><input type="reset" name="����"></td>
				</tr>
			</table>
		</form>
		</div>
	</body>
</html>