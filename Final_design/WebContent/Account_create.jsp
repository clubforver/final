<%@ page import ="java.sql.*" %>
<%@ page import ="java.net.InetAddress" %>
<%

	
	String Name = request.getParameter("Name");
    String Email = request.getParameter("Email");
    String Number = request.getParameter("Number");
    String City = request.getParameter("City");
    String Gender = request.getParameter("sex");
    String day = request.getParameter("day");
    String Month = request.getParameter("Month");
    String Year = request.getParameter("Year");
    String[] Technolgy = request.getParameterValues("Technolgy");
    String Domain = request.getParameter("Domain");
    String Experience = request.getParameter("Experience");
    System.out.println("NAME"+Name);
    System.out.println("Email"+Email);
    System.out.println("Number"+Number);
    System.out.println("City"+City);
    System.out.println("Gender"+Gender);
    System.out.println("day"+day);
    System.out.println("Month"+Month);
    System.out.println("Year"+Year); 
    
    StringBuilder c = new StringBuilder();
    
     for(int L=0;L<Technolgy.length;L++){
    	System.out.println(Technolgy[L]);
    	c.append(Technolgy[L]); 	
    } 
           
    System.out.println("Domain"+Domain);
    System.out.println("c"+c); 
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/Genpact_Quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    //ResultSet rs;
  
int i = st.executeUpdate("insert into account(Username, Password, Name, Email,Phone, City, Gender,Day,Month,Year,Technology,Domain,Experience,RegDate) values('" + Name + "','" + Name + "','" + Name + "','" + Email + "','" + Number + "','" + City + "','" + Gender + "','" + day + "','" + Month + "','" + Year + "','" + c + "','" + Domain + "','" + Experience + "',CURDATE())");


    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Login_Form.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    } 
     
    con.close();
%>