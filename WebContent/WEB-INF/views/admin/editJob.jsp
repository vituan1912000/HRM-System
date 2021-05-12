<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Update Job <small>update to make it fresher</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form modelAttribute="j" method="post" role="form" action="updateJob">
					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">Job ID</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Job ID" value="${j.job_Id}" path="job_Id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Job name</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Job name" value="${j.jobName}" path="jobName"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department ID</label> <form:input
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Department ID" value="${j.department_Id}" path="department_Id"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Salary</label> <form:input
										type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Salary" value="${j.salary}" path="salary"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Description</label> 
									<form:textarea class="form-control" id="exampleInputEmail1" path="description"/>
								</div>
								<div class="box-footer">
								<button type="submit" class="btn btn-primary">Update</button>
							</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</section>
	</div>

</body>