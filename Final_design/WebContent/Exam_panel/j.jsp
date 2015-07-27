
<%@ page contentType="text/html; charset=utf-8" language="java" import="javax.xml.parsers.DocumentBuilderFactory,java.util.*,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage="" %>
<%@ page import ="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
String url ="jdbc:mysql://localhost/Genpact_Quiz";
String users="root";
String password ="";

Connection con = DriverManager.getConnection(url, users, password);
Statement st = con.createStatement();

DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
Document doc = db.parse("C://Users//ByteBreaker.in//workspace//exam_panel/NewFile.xml");
NodeList QuestionNo = doc.getElementsByTagName("QuestionNo");
NodeList Question = doc.getElementsByTagName("Question");
NodeList choiceA = doc.getElementsByTagName("choiceA");
NodeList choiceB = doc.getElementsByTagName("choiceB");
NodeList choiceC = doc.getElementsByTagName("choiceC");
NodeList choiceD = doc.getElementsByTagName("choiceD");
NodeList correct = doc.getElementsByTagName("correct");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String secs=request.getParameter("secs"); 
int SEC = Integer.parseInt(secs);
String minutes=request.getParameter("minutes");
int MINUTES = Integer.parseInt(minutes);
String hours=request.getParameter("hours");
int HOUR = Integer.parseInt(hours);
out.println(hours);
out.println(minutes);
out.println(secs);

int Fresh;
Fresh =	(HOUR*60*60)+(MINUTES*60)+(SEC);
out.println(Fresh);

String prof = request.getParameter("choice");//check answer
out.print(prof); 

session.setAttribute("secs", secs);
session.setAttribute("hours", hours);
session.setAttribute("minutes", minutes);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

String user =(String)session.getAttribute("userid");
out.println(user);
//String prof="3";
Integer sequence=(Integer)session.getAttribute("counters");
int[] random = (int[]) session.getAttribute("random");

for(int i=0;i<=QuestionNo.getLength()-1;i++)
{
	String str = Integer.toString(random[sequence]);
	if(str.equals(QuestionNo.item(i).getFirstChild().getNodeValue()))
	{
%>
  <% if(prof.equals(correct.item(i).getFirstChild().getNodeValue()))
  {
	 System.out.print("True"); 
	 out.print("True"); 
	// marks++;
	 Integer smarks = (Integer)session.getAttribute("marks");

	 if (smarks == null) {
	     smarks = new Integer(1);
	 } else {
	     smarks = new Integer(smarks.intValue() + 1);
	 }

	 session.setAttribute("marks", smarks);
	 Integer marks=(Integer)session.getAttribute("marks");
	 int x = (int)marks;
	 out.println("ma@@@"+marks);
	 st.executeUpdate("update account set  Mark =''x''  where  Username ='"+user+"' ");

	 out.println("ma!!!"+marks);
	 
	 /*
	 	 out.println("ma@@@"+marks);
	 PreparedStatement statement=con.prepareStatement("update account set  x = ?  where  Username =? ");
    
     ps.setInt(1,marks);
     ps.setString(2,user);
     statement.executeUpdate();
     out.println("insertion done");
	*/
  }%>
</td>
</tr>
<%
}
}
session.setAttribute("Fresh", Fresh);
out.println(user);
%> 



<%



con.close();

%>




<%-- <%response.sendRedirect("second.jsp"); %> --%>
 <a href="second.jsp">second jsp page</a> 
<!--   <a href="main.jsp">second jsp page</a>-->
</body>
</html>

