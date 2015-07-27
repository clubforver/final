
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
public static int[] RandomizeArray(int a, int b){
	Random rgen = new Random();  // Random number generator		
	int size = b-a+1;
	int[] array = new int[size];
	
	for(int i=0; i< size; i++){
 		array[i] = a+i; 
	}

	for (int i=0; i<array.length; i++) {
	    int randomPosition = rgen.nextInt(array.length);
	    int temp = array[i];
	    array[i] = array[randomPosition];
	    array[randomPosition] = temp;
	}
//for(int s: array)
	//System.out.println(s);
	return array;
}
%>
<%
int c[] =RandomizeArray(1, 5);
//for(int s: c)
	//out.println(s);
session.setAttribute("onoma", c);
 %>
 <%response.sendRedirect("second.jsp"); %>
 <!-- <a href="second.jsp">second jsp page</a> -->
</body>
</html>
