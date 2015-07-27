
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
int[] random = (int[]) session.getAttribute("onoma");

session.setAttribute("random", random);

Integer counters = (Integer)session.getAttribute("counters");
String heading = null;
if (counters == null) {
    counters = new Integer(0);
} else {
    counters = new Integer(counters.intValue() + 1);
}

session.setAttribute("counters", counters);
%>
<%response.sendRedirect("exam_new_page_gui.jsp"); %>
<!-- <a href="exam_new_page_gui.jsp">second jsp page</a> -->

 <%-- You have visited this page <%=counters%> times. --%>

</body>
</html>
