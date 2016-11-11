<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Edit</th><th>Delete</th></tr> 

   <c:forEach var="emp" items="${listEmployees}">   
   
   <tr>  
   <td>${emp.id}</td>  
   <td>${emp.name}</td>  
   <td>${emp.salary}</td>
   
   

   <td><a href="${pageContext.servletContext.contextPath}/getupdateform/${emp.id}">Update Employee</a></td>  
   <td><a href="${pageContext.servletContext.contextPath}/remove/${emp.id}">Remove Employee</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/> 
   <a href="${pageContext.servletContext.contextPath}/add/">Add New Employee</a>   

</body>
</html>