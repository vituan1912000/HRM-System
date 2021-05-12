<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
	<div class="content-wrapper" style="min-height: 956px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Edit Department <small>update to make it fresher</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<form:form role="form" action="updateDepartment" modelAttribute="d" method="post">
					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">Department ID</label> 
									<form:input path="department_Id" type="text" class="form-control" id="exampleInputEmail1" placeholder="Department ID" value="${d.department_Id}"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department Name</label> 
									<form:input path="deName" type="text" class="form-control"	id="exampleInputPassword1" placeholder="Department name" value="${d.deName}"/>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Department lead</label> 
									<form:input path="" type="text" class="form-control"	id="exampleInputPassword1" placeholder="Enter department lead" disabled="true"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Number of employees</label> 
									<form:input path="" type="password" class="form-control" id="exampleInputEmail1" placeholder="Enter number of employees" disabled="true"/>
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