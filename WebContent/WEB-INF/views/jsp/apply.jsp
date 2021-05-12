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
<form:form action="apply" modelAttribute="a" method="post">
<form:input path="userName"/>Name
<form:input path="userAge"/>Age
<form:input path="userAddress"/>Address
offer job
<form:select path="job">
						<form:option value="JavaWeb01">job1</form:option>
						<form:option value="JavaWeb02">job2</form:option>
						<form:option value="JavaWeb03">job3</form:option>
						<form:option value="JavaWeb04">job5</form:option>
						<form:option value="JavaWeb05">job4</form:option>
		</form:select>
<input type="submit" value="Apply"/>
</form:form>
</body>
</html>