<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" java.util.Random" %>
    <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
public class MyStringRandomGen {

private static final String CHAR_LIST = 
"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
private static final int RANDOM_STRING_LENGTH = 10;

/**
* This method generates random string
* @return
*/
public String generateRandomString(){

StringBuffer randStr = new StringBuffer();
for(int i=0; i<RANDOM_STRING_LENGTH; i++){
	int number = getRandomNumber();
	char ch = CHAR_LIST.charAt(number);
	randStr.append(ch);
}
return randStr.toString();
}

/**
* This method generates random numbers
* @return int
*/
private int getRandomNumber() {
int randomInt = 0;
Random randomGenerator = new Random();
randomInt = randomGenerator.nextInt(CHAR_LIST.length());
if (randomInt - 1 == -1) {
    return randomInt;
} else {
    return randomInt - 1;
}
}}
%>
<%
String NosAccount = request.getParameter("NosAccount");
int NoAccount = Integer.parseInt(NosAccount);
Class.forName("com.mysql.jdbc.Driver");  

String url ="jdbc:mysql://localhost/Genpact_Quiz";
String users="root";
String password ="";
Connection con = DriverManager.getConnection(url, users, password);
 
//here sonoo is database name, root is username and password  
 
Statement stmt=con.createStatement();  
MyStringRandomGen msr = new MyStringRandomGen();
for(int i=0;i<NoAccount;i++){
String User = msr.generateRandomString();
String Pass = msr.generateRandomString();
stmt.executeUpdate("insert into account(Username, Password,RegDate) values ('" + User + "','" + Pass + "',CURDATE() )");  
 


/* System.out.println(User);
System.out.println(Pass);
System.out.println("~~~~~~~~"); */
} 
con.close();  
response.sendRedirect("Show_Bulk_Account.jsp");
 %>
</body>
</html>