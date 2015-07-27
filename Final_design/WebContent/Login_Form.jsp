<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/default.css"/>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""  height="65px" width="410"/></a>
			</div>
			</div>
		</div>
	</div>
				
	<!-- script-for-menu -->
	        
	        <form method="post" class="register" action="Account_create.jsp">
            <h1>Registration</h1>
            
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>Name *
                    </label>
                    <input type="text" Name="Name" class="long" required pattern="[a-zA-Z\s]+"   />
                </p>
				<p>
                    <label>Email *
                    </label>
                    <input type="text" Name="Email" class="long" required />
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="number" Name="Number" class="long" maxlength="12" required/>
                </p>
				
                <p>
                    <label>City *
                    </label>
                    <input type="text" Name="City" class="long" required  pattern="[a-zA-Z\s]+"/>
                </p>
             
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Gender *</label>
                    <input type="radio" name="sex" value="Male" required/>
                    <label class="gender">Male</label>
                    <input type="radio" name="sex" value="Female" />
                    <label class="gender">Female</label>
                </p>
                <p>
                    <label>Birthdate * 
                    </label>
                    <select Name="day" required class="date" >
						<option value="" >Select date
                        </option>
                        <option value="1" >01
                        </option>
                        <option value="2">02
                        </option>
                        <option value="3">03
                        </option>
                        <option value="4">04
                        </option>
                        <option value="5">05
                        </option>
                        <option value="6">06
                        </option>
                        <option value="7">07
                        </option>
                        <option value="8">08
                        </option>
                        <option value="9">09
                        </option>
                        <option value="10">10
                        </option>
                        <option value="11">11
                        </option>
                        <option value="12">12
                        </option>
                        <option value="13">13
                        </option>
                        <option value="14">14
                        </option>
                        <option value="15">15
                        </option>
                        <option value="16">16
                        </option>
                        <option value="17">17
                        </option>
                        <option value="18">18
                        </option>
                        <option value="19">19
                        </option>
                        <option value="20">20
                        </option>
                        <option value="21">21
                        </option>
                        <option value="22">22
                        </option>
                        <option value="23">23
                        </option>
                        <option value="24">24
                        </option>
                        <option value="25">25
                        </option>
                        <option value="26">26
                        </option>
                        <option value="27">27
                        </option>
                        <option value="28">28
                        </option>
                        <option value="29">29
                        </option>
                        <option value="30">30
                        </option>
                        <option value="31">31
                        </option>
                    </select>
                    <select Name="Month" required>
						<option value="">January
                        </option>
                        <option value="1">January
                        </option>
                        <option value="2">February
                        </option>
                        <option value="3">March
                        </option>
                        <option value="4">April
                        </option>
                        <option value="5">May
                        </option>
                        <option value="6">June
                        </option>
                        <option value="7">July
                        </option>
                        <option value="8">August
                        </option>
                        <option value="9">September
                        </option>
                        <option value="10">October
                        </option>
                        <option value="11">November
                        </option>
                        <option value="12">December
                        </option>
                    </select>
                    <input class="year" Name="Year" required type="text" size="4" maxlength="4"/>e.g 1976
                </p>
                <p>
                    <label>Technolgy *
                    </label>
                    <select multiple required Name="Technolgy" >
                        <option value="">
                        </option>
                        <option value="JAVA">Java</option>
                        <option value="HTML">HTML</option>
                        <option value="RUBY">Ruby</option>
                    </select>
                </p>
             <p>
                    <label>Domain *
                    </label>
                    <select required Name="Domain">
                        <option value="" >
                        </option>
                        <option value="1">United States
                        </option>
                         <option value="1">United States
                        </option>
                    </select>
                </p>
				
             <p>
                    <label>Experience In Months *
                    </label>
                    <input required type="number" Name="Experience" class="long"/>
                </p>
               
            </fieldset>
            <fieldset class="row4">
                <legend>Helpful Information
                </legend>
				
                <p class="agreement">
                    <input type="checkbox"  required value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
              
                    <p>Please insure the form must be performed in good faith and a brief reporting once the Form is Submit it can't be Unchanged .</p>
					<p>* Required Field .</p>
               
            </fieldset>
            <!-- <div><button class="button">Register &raquo;</button></div> -->
            <input type="submit" value="Submit" />&raquo;
           
        </form>
	
	

</body>
</html>
