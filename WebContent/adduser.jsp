<%@page import="com.javatpoint.dao.UserDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User" ></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
int i=UserDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>