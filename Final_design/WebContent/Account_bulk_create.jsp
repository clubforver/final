
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <title>Admin</title>
    <link href="Admin_css/bootstrap-min.css" rel="stylesheet">
    <link href="Admin_css/simple-sidebar.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Admin_css/style.css">
</head>
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
                    <a href="#">Create Bulk Account</a>
                </li>
                <li>
                    <a href="#">Account</a>
                </li>
                <li>
                    <a href="UploadQuestion.jsp">Upload Question</a>
                </li>
                
            </ul>
        </div>
        <!-- Page Content -->
		<!--
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                  
                        <h1>Simple Sidebar</h1>
                        <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
               
            </div>
        </div>
    </div>
	-->
	<div id="header">
	<div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
<div class="form-style-5">
<form method="post" action="DAccount_Bulkcreate.jsp">
<fieldset>
<legend><span class="number">1</span>Create Account</legend>

<input type="text" name="NosAccount" placeholder="Number of User Account.*">
<label for="job">Quiz:</label>
<select id="job" name="field4">
<optgroup label="Quiz">
  <option value="fishkeeping">JAVA</option>
  <option value="reading">HTML</option>
  <option value="boxing">DOTNET</option>
  <option value="debate">PHP</option>
  <option value="gaming">PYTHON</option>
  <option value="other_indoor">Other</option>
</optgroup>
</select>      
</fieldset>

<input type="submit" value="Make Account" />
</form>
</div>
</div>
 </div>
        </div>
    </div>

   

</body>

</html>
