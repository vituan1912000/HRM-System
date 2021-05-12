<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Add New Employee <small>Preview</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form role="form" modelAttribute="e" method="post" action="insertE">
					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputPassword1">Employee Name</label>
									<form:input type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter name"
										path="name" />
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Age</label>
									<form:input type="number" class="form-control"
										id="exampleInputPassword1" placeholder="Enter age" path="age" />
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Address</label>
									<form:input type="text" class="form-control"
										id="exampleInputEmail1" placeholder="Enter address"
										path="address" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box box-primary">
						<div class="box-body">		
								<div class="form-group">
									<label for="exampleInputPassword1">Job</label>
									<form:select class="form-control"
										id="exampleInputPassword1" placeholder="Enter job" path="job_id.job_Id">
								
										 	<c:forEach items="${ListJob}" var="j">
										 	   <form:option value="${j.job_Id}" >${j.jobName}</form:option>
										 	</c:forEach>
									
									</form:select>	
								</div>
							</div>
							<div class="box-body">		
								<div class="form-group">
									<label for="exampleInputPassword1">Salary</label>
									<form:input type="number" class="form-control"
										id="exampleInputPassword1" placeholder="Enter job" path="salary" />
								</div>
							</div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Add</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Data Table Of Employee</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div class="row">
									<div class="col-sm-6">
										<form action="search">
											<label>Search:<input type="search"
												class="form-control input-sm" name="sId"
												placeholder="Search by ID" aria-controls="example1"></label>
											<button type="submit" class="btn btn-primary">Search</button>
										</form>
										<h4 style="color: green">${message}</h4>
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
														<td class="sorting_1">${e.id}</td>
														<td>${e.name}</td>
														<td>${e.age}</td>
														<td>${e.address}</td>
														<td>${e.job_id.department_Id.deName}</td>
														<td>${e.job_id.jobName}</td>
				                             
														<td><a href="initUpdate?id=${e.id}"><button
																	type="button" class="btn btn-block btn-primary">Edit</button></a>
														</td>
														<td><a href="deleteEmployee?id=${e.id}"
															onclick="return confirm('Are you sure?')"><button
																	type="button" class="btn btn-block btn-danger">Delete</button></a>
														</td>
														<td><a href="detailOfEmployee?id=${e.id}"><button
																	type="button" class="btn btn-block btn-info">Details</button></a>
														</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>


		</section>
	</div>

</body>