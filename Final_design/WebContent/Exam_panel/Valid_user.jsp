<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("Username");    
    String pwd = request.getParameter("password");
  
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/genpact_quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from account where Username ='" + user + "' and Password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", user);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("rand_func.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    

%>