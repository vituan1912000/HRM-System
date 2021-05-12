<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content-wrapper" style="min-height: 956px;">


		<!-- Main content -->
		<section class="content">
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
</html>