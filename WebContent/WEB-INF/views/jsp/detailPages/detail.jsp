<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
#fire{
background-color: #990000 ;
	color:white;
	margin: 10px 15px;
	font-weight: bolder;
	font-size: 18px;
	border-radius: 5px;
	text-decoration: none;
    padding: 10px;
    float:right;
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
}
#fire:hover{
	background-color:#FF0000 ;
	color:white;
	 box-shadow: 5px 10px 18px red;
}
a{
text-decoration: none;
cursor: pointer;
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
			<div class="container">

					<div class="row">
						<div class="col-50">
						  <i class="fa fa-user-circle"></i>
							<h3>Personal Information</h3>
							
							 <label><i class="fa fa-id-card-o"></i>ID            :${e.id}</label>
							<label><i class="fa fa-user"></i> Full Name    :${e.name}</label>
							 <label><i class="fa fa-heart"></i> Age          :${e.age}</label>  
							 <label><i class="fa fa-map-marker"></i>Address      :${e.address}</label>
							  <label><i class="fa fa-institution"></i>Department   :${e.departmentName}</label>
							  <label><i class="fa fa-id-badge"></i>Department-ID:${e.departmentId}</label>
							  <label><i class="fa fa-briefcase"></i> JOB          :${e.job}</label>
							  <label><i class="fa fa-id-badge"></i> Job-ID       :${e.jobId}</label>
							  <label><i class="fa fa-money"></i>Salary       :${e.salary}</label>
							 <a href="initUpdate?id=${e.id}"> <label id="update"><i class="fa fa-pencil"></i>Update</label></a>  
						
						</div>
					</div>
			</div>
<a id="back" href="employeeList">back</a>
<a id="fire" href="deleteEmployee?id=${e.id}" onclick="return confirm('Are you sure?')">Fire</a>
</body>
</html>