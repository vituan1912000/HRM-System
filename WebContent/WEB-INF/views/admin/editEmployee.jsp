<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Edit Employee <small>update to make it fresher</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form modelAttribute="e" method="post" action="update">
					<div class="col-md-6">
					<h6 style="color:red">${error}</h6>
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">Employee ID</label> 
									<form:input type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Employee ID" value="${e.id}" path="id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Employee Name</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter name" value="${e.name}" path="name"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Age</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter age" value="${e.age}" path="age"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Address</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter address" value="${e.address}" path="address"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Department</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter department" value="${e.job_id.department_Id.deName}" path="job_id.department_Id.deName"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-body">
							
								<div class="form-group">
									<label for="exampleInputPassword1">Department ID</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter department ID" value="${e.job_id.department_Id.department_Id}" path="job_id.department_Id.department_Id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Salary</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter salary" value="${e.salary}" path="salary"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Job</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter job" value="${e.job_id.jobName}" path="job_id.jobName"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Job ID</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter Job ID" value="${e.job_id.job_Id}" path="job_id.job_Id"/>
								</div>
							</div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</section>
	</div>

</body>