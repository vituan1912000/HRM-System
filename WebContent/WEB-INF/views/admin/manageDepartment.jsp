<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Add New Department <small>Preview</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form role="form" action="insertDepartment" modelAttribute="d" method="post">
					<div class="col-md-6">
						<h4 style="color: green">${message}</h4>
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">Department ID</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Department ID" path="department_Id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department Name</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Department name" path="deName"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department lead</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter department lead" disabled="true" path=""/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Number of employees</label> <form:input
										type="password" class="form-control" id="exampleInputEmail1"
										placeholder="Enter number of employees" disabled="true" path=""/>
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
							<h3 class="box-title">Data Table Of Department</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div class="row">
									<div class="col-sm-6">
										<form action="">
											<label>Search:<input type="search"
												class="form-control input-sm" name="sId"
												placeholder="Search by Department" aria-controls="example1"></label>
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
														style="width: 177px;">Department ID</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1"
														aria-label="Browser: activate to sort column ascending"
														style="width: 224px;">Department Name</th>
																								
												</tr>
											</thead>
											<tbody>	
												<tr role="row" class="odd">
												<c:forEach items="${listDepartment}" var="d">
													<td>${d.department_Id}</td>
													<td>${d.deName}</td>
													<td>
														<a href="initUpdateDepartment?department_Id=${d.department_Id}"><button type="button" class="btn btn-block btn-primary">Edit</button></a>
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