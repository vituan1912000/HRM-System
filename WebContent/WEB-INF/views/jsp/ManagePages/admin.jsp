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
<%@ include file ="../html,css,js/css/table-form.css" %>
</style>
 <style><%@include file="../html,css,js/plugins/fontawesome-free/css/all.min.css" %></style>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

  <!-- Tempusdominus Bbootstrap 4 -->

  <style><%@include file="../html,css,js/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" %></style>
  <!-- iCheck -->

  <style><%@include file="../html,css,js/plugins/icheck-bootstrap/icheck-bootstrap.min.css" %></style>
  <!-- JQVMap -->
 
  <style><%@include file="../html,css,js/plugins/jqvmap/jqvmap.min.css" %></style>
  <!-- Theme style -->

  <style><%@include file="../html,css,js/dist/css/adminlte.min.css" %></style>
  <!-- overlayScrollbars -->

  <style><%@include file="../html,css,js/plugins/overlayScrollbars/css/OverlayScrollbars.min.css" %></style>
  <!-- Daterange picker -->

  <style><%@include file="../html,css,js/plugins/daterangepicker/daterangepicker.css" %></style>
  <!-- summernote -->

  <style><%@include file="../html,css,js/plugins/summernote/summernote-bs4.css" %></style>
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
</head>

<body>
	<!-- Sidebar -->
	<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 15%; background-color: ">
		<h3 class="w3-bar-item">Menu</h3>
		<a href="#" class="w3-bar-item w3-button" id="em">Employee</a> 
		<a href="loadDepartment" class="w3-bar-item w3-button" id="dp">Department</a>
		 <a href="loadJob" class="w3-bar-item w3-button" id="j">Job Portal</a>
		  <a href="loadJob" class="w3-bar-item w3-button" id="j">Send Message</a>
		 <a href="#" class="w3-bar-item w3-button">Notification (<span style="color:red">${numberOfMessage}</span>)</a>
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
		
	
			<!-- end of search bar -->
             
                   <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:25%">Total Staff:${total}</div>
    </div>
			<!-- Employee Table -->
			
				<!--  -->
		
			     
			
		</div>
		
		
		
		

		
<form:form action="insert" modelAttribute="e" method="post">
					<h1>Information</h1>
					Name<form:input path="name" placeholder="Name" />
					Age<form:input path="age" type="number" placeholder="Age"/>
					Address<form:input path="address" placeholder="Address"/>
	    	Department<form:select path="departmentName" >
	    	            <form:option value=""></form:option>
					<c:forEach items="${listDepartment}" var="d">
						<form:option value="">${d.deName}</form:option>
					</c:forEach>
					</form:select>
					Department ID<form:input path="departmentId"  placeholder="Department Id"/>
					JOB<form:input path="job"  placeholder="job"/>
					 Job ID<form:input path="jobId"  placeholder="jobId"/>
					  Salary<form:input path="salary" type="number" placeholder="Salary"/>

					<button type="submit" class="btn">ADD</button>

	</form:form>
		
		
		
		
		
		<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">

						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div class="row">
									<div class="col-sm-6">
										<div id="example1_filter" class="dataTables_filter">
											
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table id="example1"
											class="table table-bordered table-striped dataTable"
											role="grid" aria-describedby="example1_info">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0"
														aria-controls="example1" rowspan="1" colspan="1"
														aria-sort="ascending"
														aria-label="Rendering engine: activate to sort column descending"
														style="width: 177px;">Employee ID</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Browser: activate to sort column ascending"
														style="width: 224px;">Name</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Platform(s): activate to sort column ascending"
														style="width: 206px;">Age</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Engine version: activate to sort column ascending"
														style="width: 153px;">Address</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="CSS grade: activate to sort column ascending"
														style="width: 113px;">Department</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="CSS grade: activate to sort column ascending"
														style="width: 113px;">Job</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="CSS grade: activate to sort column ascending"
														style="width: 113px;">Edit</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="CSS grade: activate to sort column ascending"
														style="width: 113px;">Delete</th>	
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="CSS grade: activate to sort column ascending"
														style="width: 113px;">Details</th>													
												</tr>
											</thead>
											<tbody>
												<tr role="row" class="odd">
												<c:forEach items="${list}" var="e">
													<td class="sorting_1">${1801040000 + e.id}</td>
													<td>${e.name}</td>
													<td>${e.age}</td>
													<td>${e.address}</td>
													<td>${e.departmentName}</td>
													<td>${e.job}</td>
													<td>
														<a href="initUpdate?id=${e.id}"></a><button type="button" class="btn btn-block btn-primary">Edit</button></a>
													</td>
													<td>
														<a href="deleteEmployee?id=${e.id}" onclick="return confirm('Are you sure?')"  ><button type="button" class="btn btn-block btn-danger">Delete</button></a>
													</td>
													<td>
														<a href="detailOfEmployee?id=${e.id}"><button type="button" class="btn btn-block btn-info">Details</button></a>
													</td>
												</tr>	
												</c:forEach>										
											</tbody>
										</table>
									</div>
								</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
		
		
		
		
		
		
	</div>
	<!--  -->


</body>
</html>