
<%
	response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You need to be logged in as to view this page
<br />
<a href="login.jsp">Please Login</a>
<%
	response.sendRedirect("login.jsp");
%>
<%
	} else {
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Payroll System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />



<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">
<!-- Flaticons  -->
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary"
			class="border js-fullheight">
		<h1 id="colorlib-logo">
			<a href="admin_profile.jsp">hai ${username}</a>
		</h1>
		<nav id="colorlib-main-menu" role="navigation">
		<ul>
			<li><a href="Adminhome.jsp">Home</a></li>
			<br>

			<li><a href="admin_profile.jsp">Profile</a></li>
			<br>
			<li class="colorlib-active"><a href="AddEmp.jsp">+Add Employee</a></li>
			<br>
			<li><a href="EmpList.jsp">Employee List</a></li>
			<br> <br>
					<li><a href="LogoutServlet">Log out</a></li>
		</ul>
		</nav> </aside>

		<div id="colorlib-main">
			<div class="colorlib-services">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
							data-animate-effect="fadeInLeft">
							<span class="heading-meta">ManPower</span>

						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">+Add
									Employees</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								<form action="AddEmpServlet" method="post">
								
									<div class="form-row">
									
										<div class="form-group col-md-6">
											<label for="inputDept">Employee Id</label> <input type="text"
												class="form-control" id="inputId" name="id" placeholder="ID" required>
										</div>
										<div class="form-group col-md-6">
											<label for="inputDept">Name</label> <input type="text"
												class="form-control" id="inputName" name="name" placeholder="Name" required>
										</div>
									
									</div>

									<div class="form-row">

										<div class="form-group col-md-6">
											<label for="inputDept">User name</label> <input type="text"
												class="form-control" id="inputUserName" name="username" placeholder="UserName" required>
										</div>
										<div class="form-group col-md-6">
											<label for="inputDept">Password</label> <input type="text"
												class="form-control" id="inputUserName" name="passwd" placeholder="Password" required>
										</div>

									</div>

									<div class="form-row" action = "AddEmpServlet">
										<div class="form-group col-md-3">
											<label for="field-2">Date Of Join</label> <input type="date"
												class="form-control datepicker" name="date_of_join" value=""
												data-start-view="2" placeholder="date here"
												data-format="D, dd MM yyyy" required />
										</div>

										<div class="form-group col-md-2">
											<label for="field-2">Tire No</label> <select name="tire"
												class="form-control selectboxit">
												<option value="4">Tire 4</option>
												<option value="3">Tire 3</option>
												<option value="2">Tire 2</option>
												<option value="1">Tire 1</option>
											</select>
										</div>
										<div class="form-group col-md-3">
											<label for="inputDept">Department</label> <input type="text"
												class="form-control" id="inputPassword4" name="dept"
												placeholder="Department" required>
										</div>
										<div class="form-group col-md-3">
											<label for="inputDept">Designation</label> <input type="text"
												class="form-control" id="inputPassword4" name="desig"
												placeholder="Department" required>
										</div>
									</div>
									
									<button type="submit" class="btn btn-primary">+Add Employee</button>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">VIEW
									CURRENT CTC </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								<p>Address: Anugraha, Athanikkal East Westhill P.O Calicut-5</p>
								<p>Pincode: 673005</p>
								<p>Email id:kavyamathew@virtusa.com</p>
								<p>Mobile No: 8086511312</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>


	<!-- MAIN JS -->
	<script src="js/main.js"></script>


</body>
</html>

<%
	}
%>