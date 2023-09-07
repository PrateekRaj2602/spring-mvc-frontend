<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>
h1 {text-align: center;}
h2 {text-align: center;}
body {text-align: center;}
body {
   font-family: Arial, Helvetica, sans-serif;
   align:center;
}
  .tb { border-collapse: collapse; }
  .tb th, .tb td { padding: 5px; border: solid 1px #777; }
  .tb th { background-color: lightblue; }
  .styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
</style>
</head>
<body>
<table class="styled-table">
<c:forEach var="employee" items="${employeeList}"> 
	<tr>	
		<td>${employee.employeeId}</td>
		<td>${employee.employeeName}</td>
		<td>${employee.employeeSalary}</td>
		<td>${employee.employeeAge}</td>
		<td>${employee.employeeDepartment}</td>
	</tr>
</c:forEach> 
</table>

<hr>

<form action="/home">
<button type="submit">Back to home</button>
</form>

</body>
</html>