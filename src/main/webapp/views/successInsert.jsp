<html>
<head>
<style>
header h1 {
  font-size: 70px;
  font-weight: 600;
  color: #fdfdfe;
  text-shadow: 0px 0px 5px #b393d3, 0px 0px 10px #b393d3, 0px 0px 10px #b393d3,
    0px 0px 20px #b393d3;
}

</style>
</head>
<body>


<h1>Employee has been added Successfully with Id: ${employee.employeeId}</h1>
<h2>Name is: ${employee.employeeName}</h2>
<h2>Salary is: ${employee.employeeSalary}</h2>
<h2>Age is: ${employee.employeeAge}</h2>
<h2>Department is: ${employee.employeeDepartment}</h2>

<hr>

<form action="/home">
<button type="submit">Back to home</button>
</form>

</body>
</html>