<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

					<div class="row">
						<div class="col-50">
						  <i class="fa fa-user-circle"></i>
						  <form:form action="updateDEpartment" modelAttribute="d" method="post">
							<h3>Update DEpartment ${d.deName}</h3>
							
							 <label><i class="fa fa-id-card-o"></i>DEpartment ID  :<form:input path="department_Id" type="number" placeholder="${d.department_Id}" /></label>
							<label><i class="fa fa-user"></i> Department Name    :<form:input path="deName" type="text" placeholder="${d.deName}" /></label>
							  <label id="update"><i class="fa fa-pencil"></i><input type="submit" value="Update"/></label> 
						</form:form>
						</div>
					</div>
			</div>
<a id="back" href="employeeList">back</a>
</body>
</html>