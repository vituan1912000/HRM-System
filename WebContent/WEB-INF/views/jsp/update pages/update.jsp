<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}


.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
  margin: auto;
}
label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}
#back{
background-color: #333333 ;
	color:white;
	margin: 10px 15px;
	font-weight: bolder;
	font-size: 18px;
	border-radius: 5px;
	text-decoration: none;
    padding: 10px;
    margin-top: 50px;
    position: flex;
}
#back:hover{
	background-color:#111111 ;
	color:white;
	 box-shadow: 5px 10px 18px black;
}
a{
text-decoration: none;
}
a:hover{
cursor: pointer;
text-decoration: underline;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>

</head>
<body>
<body>
<h3 style="color:red">${error}</h3>
			<div class="container">

					<div class="row">
						<div class="col-50">
						  <i class="fa fa-user-circle"></i>
						  <form:form action="update" modelAttribute="e" method="post">
							<h3>Update Employeee ${e.name}</h3>
							
							 <label><i class="fa fa-id-card-o"></i>ID  :<form:input path="id" type="number" placeholder="${e.id}" /></label>
							<label><i class="fa fa-user"></i> Full Name    :<form:input path="name" type="text" placeholder="${e.name}" /></label>
							 <label><i class="fa fa-heart"></i> Age          :<form:input path="age" type="number" placeholder="${e.age}" /></label>  
							 <label><i class="fa fa-map-marker"></i>Address      :<form:input path="address" type="text" placeholder="${e.address}" /></label>
							  <label><i class="fa fa-institution"></i>Department   :<form:input path="departmentName" type="text" placeholder="${e.departmentName}" /></label>
							  <label><i class="fa fa-id-badge"></i>Department-ID:<form:input path="departmentId" type="text" placeholder="${e.departmentId}" /></label>
							  <label><i class="fa fa-briefcase"></i> JOB          :<form:input path="job" type="text" placeholder="${e.job}" /></label>
							  <label><i class="fa fa-id-badge"></i> Job-ID       :<form:input path="jobId" type="text" placeholder="${e.jobId}" /></label>
							  <label><i class="fa fa-money"></i>Salary       :<form:input path="salary" type="number" placeholder="${e.salary}" /></label>
							  <label id="update"><i class="fa fa-pencil"></i><input type="submit" value="Update"/></label> 
						</form:form>
						</div>
					</div>
			</div>
<a id="back" href="employeeList">back</a>
</body>
</html>