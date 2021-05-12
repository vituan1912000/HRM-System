<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Add New Job <small>Preview</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form role="form" action="insertJob" modelAttribute="j">
					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">Job ID</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Job ID" path="job_Id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Job Name</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Job name" path="jobName"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department</label> 
									<form:select
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter department" path="department_Id.department_Id">
									
										 	<c:forEach items="${listDepartment}" var="d">
										 	   <form:option value="${d.department_Id}">${d.deName}</form:option>
										 	</c:forEach>
									</form:select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Salary</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter number of employees" path="salary"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Description</label> <form:textarea 
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter number of employees" path="description"/>
								</div>
								<div class="box-footer">
								<button type="submit" class="btn btn-primary">Add</button>
							</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Data Table Of Job</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div class="row">
									<div class="col-sm-6">
										<div id="example1_filter" class="dataTables_filter">
											<label>Search:<input type="search"
												class="form-control input-sm" placeholder=""
												aria-controls="example1"></label>
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
														style="width: 177px;">Job ID</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Browser: activate to sort column ascending"
														style="width: 224px;">Job Name</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Engine version: activate to sort column ascending"
														style="width: 153px;">Department ID</th>	
														<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Engine version: activate to sort column ascending"
														style="width: 153px;">Salary</th>	
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Engine version: activate to sort column ascending"
														style="width: 153px;">Edit</th>		
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Engine version: activate to sort column ascending"
														style="width: 153px;">Details</th>												
												</tr>
											</thead>
											<tbody>
												<tr role="row" class="odd">
												<c:forEach items="${ListJob}" var="j">
					
													<td>${j.job_Id}</td>
													<td>${j.jobName}</td>
													<td>${j.department_Id.department_Id}</td>
													<td>${j.salary}</td>
													<td>
														<a href="initUpdateJob?job_Id=${j.job_Id}"><button type="button" class="btn btn-block btn-primary">Edit</button></a>
													</td>
													<td>
														<a href="jobDescription?job_Id=${j.job_Id}"><button type="button" class="btn btn-block btn-info">Details</button></a>
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