<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<style>
<%@ include file ="css/table-form.css" %>
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
</head>
<body>
	<!-- Sidebar -->
	<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 15%">
		<h3 class="w3-bar-item">Menu</h3>
		<a href="#" class="w3-bar-item w3-button" id="em">Employee</a> 
		<a href="#" class="w3-bar-item w3-button" id="dp">Department</a>
		 <a href="#" class="w3-bar-item w3-button" id="j">Job Portal</a>
		 <a href="initApply" class="w3-bar-item w3-button">Apply for job</a>
		 <a href="#" class="w3-bar-item w3-button">Notification</a>
	</div>
	<!--side bar -->

	<!-- Page Content -->
	<div style="margin-left: 15%">

		<div class="w3-container w3-teal">
			<h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
			<a id="logout" href="index.jsp">Log Out</a>
		</div>
	<!-- Page Content -->
	
	  <!-- search bar -->
	     <h4 style="color:red">${err}</h4>
	    <div id="search-bar" style="align-content: center">
	    <form action="search">
	      <input type="text" name="sId" placeholder="seacrh employee by ID"/> 
	      <button type="submit">Search</button> 
	     </form>
	  
	     
	    </div>
	    
	    
		<div>
			<!-- form insert employee -->
			<button class="open-button" onclick="openForm()">ADD+</button>

			<div class="form-popup" id="myForm">
			<form action="insert" class="form-container">

					<h1>Information</h1>
					<input type="text" placeholder="Full Name" name="name" required>
					<input type="number" placeholder="Age" name="age" required>
					<input type="text" placeholder="Address" name="address" required>
					<select name="deName">
						<option value="volvo">Software Engineering</option>
						<option value="saab">Designer</option>
						<option value="opel">Manager</option>
						<option value="audi">Support Team</option>
						<option value="opel">Manager</option>
						<option value="opel">Net Work Department</option>
					</select> <input type="text" placeholder="Department ID" name="deId"
						required> <input type="text" placeholder="Job" name="job"
						required> <input type="text" placeholder="Job ID"
						name="jobId" required> <input type="number"
						placeholder="Salary" name="salary" required>

					<button type="submit" class="btn">ADD</button>
					<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
				</form>
			</div>
			<!--  -->
             
                   <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:25%">Total Staff:${total}</div>
    </div>
			<!-- Employee Table -->
			<h3 style="color: green">${message}</h3>
			<div class="container" id="employee">

				<div class="table">

					<div class="table-header">

						<div class="header__item">
							<a id="id" class="filter__link" href="#">#</a>
						</div>
						<div class="header__item">
							<a id="name" class="filter__link filter__link--number" href="#">name</a>
						</div>
						<div class="header__item">
							<a id="draws" class="filter__link filter__link--number" href="#">job
								id</a>
						</div>
						<div class="header__item">
							<a id="losses" class="filter__link filter__link--number" href="#">position</a>
						</div>
						<div class="header__item">
							<a id="total" class="filter__link filter__link--number" href="#">department</a>
						</div>
					</div>
					<c:forEach items="${list}" var="e">
						<div class="table-content">
							<a href="detailOfEmployee?id=${e.id}">
								<div class="table-row">
									<div class="table-data">${e.id}</div>
									<div class="table-data">${e.name}</div>
									<div class="table-data">${e.jobId}</div>
									<div class="table-data">${e.job}</div>
									<div class="table-data">${e.departmentName}</div>
								</div>
							</a>
							<hr>
						</div>
					</c:forEach>
				</div>
			</div>
			
				<!--  -->
			<div class="container" id="department" >

				<div class="table">

					<div class="table-header">

						<div class="header__item">
							<a id="name" class="filter__link filter__link--number" href="#">Department ID</a>
						</div>
						<div class="header__item">
							<a id="draws" class="filter__link filter__link--number" href="#">Department Name
								</a>
						</div>
					</div>
					<c:forEach items="${listDepartment}" var="d">
						<div class="table-content">
		
								<div class="table-row">
									<div class="table-data">${d.deId}</div>
									<div class="table-data">${d.deName}</div>
								</div>
							</a>
							<hr>
						</div>
					</c:forEach>
				</div>
			</div>
				<!--  -->
				
			
			<!--  -->
			<div class="container" id="job" >

				<div class="table">

					<div class="table-header">

						<div class="header__item">
							<a id="name" class="filter__link filter__link--number" href="#">Job ID</a>
						</div>
						<div class="header__item">
							<a id="draws" class="filter__link filter__link--number" href="#"> Name
								</a>
						</div>
						<div class="header__item">
							<a id="name" class="filter__link filter__link--number" href="#">Department ID</a>
						</div>
						<div class="header__item">
							<a id="draws" class="filter__link filter__link--number" href="#">Salary
								</a>
						</div>
					</div>
					<c:forEach items="${ListJob}" var="j">
						<div class="table-content">
		
								<div class="table-row">
									<div class="table-data">${j.jobId}</div>
									<div class="table-data">${j.jobName}</div>
									<div class="table-data">${j.deId}</div>
									<div class="table-data">${j.salary}</div>
								</div>
								<hr>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
				<!--  -->
				${test}
				
				<!--  -->
			<div class="container" id="" >

				<div class="table">

					<div class="table-header">

						<div class="header__item">
							<a id="name" class="filter__link filter__link--number" href="#">Department ID</a>
						</div>
					</div>
					<c:forEach items="${apply}" var="a">
						<div class="table-content">
								<div class="table-row">
									<div class="table-data">${a.aId}</div>
	
								</div>
							</a>
							<hr>
						</div>
					</c:forEach>
				</div>
			</div>
				<!--  -->
		
			     
			
		</div>
		
		
		
		
	</div>
	<!--  -->

	<script>
	document.getElementById("dp").addEventListener('click', showdepartment);
	document.getElementById("em").addEventListener('click', showEmployee);
	document.getElementById("j").addEventListener('click', showJob);
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
		
		function showEmployee() {
			document.getElementById("department").style.display = "none";
			document.getElementById("employee").style.display = "block";
			document.getElementById("job").style.display = "none";
		}
		function showdepartment() {
			document.getElementById("department").style.display = "block";
			document.getElementById("employee").style.display = "none";
			document.getElementById("job").style.display = "none";
		}
		function showJob() {
			document.getElementById("department").style.display = "none";
			document.getElementById("employee").style.display = "none";
			document.getElementById("job").style.display = "block";
		}
		
	</script>

</body>
</html>