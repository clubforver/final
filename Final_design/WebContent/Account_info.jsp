<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload</title>
    <link href="Admin_css/bootstrap-min.css" rel="stylesheet">
    <link href="Admin_css/simple-sidebar.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Admin_css/style.css">
	<link rel="stylesheet" type="text/css" href="Admin_css/table.css">
<title>Insert title here</title>
</head>

<%
String username=request.getParameter("username"); 

%>

<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="hello.html">
                        Admin Panel
                    </a>
                </li>
                <li>
                    <a href="#">Create Account</a>
                </li>
                <li>
                    <a href="#">Account</a>
                </li>
                <li>
                    <a href="#">Upload Question</a>
                </li>
                <li>
                    <a href="#">Result</a>
                </li>
                
            </ul>
        </div>
       
<%
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/Genpact_Quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    //ResultSet rs;
    ResultSet rs = st.executeQuery("Select * from account where Username = '"+ username+"'");
    while(rs.next()){
    %>
    
     

  
    
	<div id="header">
	<div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
<div class="form-style-5">
<form method="post" action="writing_xml.jsp">

<legend><span class="number">1</span> User Entered Info</legend>



<table cellspacing='4'>
                <thead>
                    <tr>
                        <th colspan="2">Account info</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><%= rs.getString(3) %></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><%= rs.getString(4) %></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><%= rs.getString(5) %></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><%= rs.getString(6) %></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                       <td><%= rs.getString(7) %></td>
                    </tr>
                    <tr>
                        <td>Day</td>
                       <td><%= rs.getString(8) %></td>
                    </tr>
                    <tr>
                        <td>Month</td>
                        <td><%= rs.getString(9) %></td>
                    </tr>
                    <tr>
                        <td>Year</td>
                        <td><%= rs.getString(10) %></td>
                    </tr>
                    <tr>
                        <td>Technolgy</td>
                        <td><%= rs.getString(11) %></td>
                    </tr>
                    <tr>
                        <td>Domain</td>
                       <td><%= rs.getString(12) %></td>
                    </tr>
                    <tr>
                        <td>Experience</td>
                        <td><%= rs.getString(13) %></td>
                    </tr>
                    <tr>
                        <td>Registration Date</td>
                        <td><%= rs.getString(14) %></td>
                    </tr>
                    <tr>
                        <td>Marks</td>
                        <td><%= rs.getString(15) %></td>
                    </tr>
                   
                    <tr>
                        <td colspan="2"> <a href="Show_account.jsp">Show Other User Results</a></td>
                    </tr>
                </tbody>
            </table>
            <% }%>
</form>
</div>
</div>
 </div>
        </div>
    </div>

   




</body>
</html>