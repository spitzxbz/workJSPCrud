<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javatpoint.bean.*,com.javatpoint.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String email = request.getParameter("email");
	String subject = new String(request.getParameter("subject").getBytes("ISO-8859-1"), "UTF-8");
	String message = new String(request.getParameter("message").getBytes("ISO-8859-1"), "UTF-8");

	Msg act = new Msg(name, email, subject, message);
	MsgDao dao = new MsgDao();
	if(dao.save(act))
	{
		response.sendRedirect("addcontact-success.jsp");
	}
	else
		response.sendRedirect("addcontact-error.jsp");
%>
<body>

</body>
</html>