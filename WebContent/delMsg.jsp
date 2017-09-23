<%@page import="com.javatpoint.dao.MsgDao,com.javatpoint.bean.*"%>
<jsp:useBean id="m" class="com.javatpoint.bean.Msg"></jsp:useBean>
<jsp:setProperty property="*" name="m"/>

<%
int idMsg = Integer.parseInt(request.getParameter("idMsg"));
Msg act = new Msg(idMsg);
MsgDao dao = new MsgDao();
if(dao.delete(act))
{
	response.sendRedirect("MsgListPage.jsp");
}
	
%>