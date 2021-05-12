<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style><%@include file="../html,css,js/plugins/fontawesome-free/css/all.min.css" %></style>
  <!-- Ionicons -->
  <link rel="stylesheet" href="../https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

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
<body>

		<form:form action="insertDepartment" modelAttribute="d" method="post">
					<h1>Information</h1>
					Department Name<form:input path="deName"/>
					Department ID<form:input path="department_Id"  />
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
												
												</tr>
											</thead>
											<tbody>
												<tr role="row" class="odd">
												<c:forEach items="${listDepartment}" var="d">
					
													<td>${d.deName}</td>
													<td>${d.department_Id}</td>
													<td>
														<a href="initUpdateDepartment?department_Id=${d.department_Id}"></a><button type="button" class="btn btn-block btn-primary">Edit</button></a>
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
</body>
</html>