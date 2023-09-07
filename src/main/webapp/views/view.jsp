
<html>
<body>

<form action="/insertEmployee" method="post">
<table style="margin-left:auto; margin-right:auto;">
  <tr>
    <td>Name</td>
    <td><input type="text" name="employeeName" align="left"></td>       
  </tr>
   <tr>
    <td>Salary</td>
    <td><input type="text" name="employeeSalary" align="left"></td>       
  </tr>
    <tr>
    <td>Age</td>
    <td><input type="text" name="employeeAge" align="left"></td>       
  </tr>
    <tr>
    <td>Department</td>
    <td><input type="text" name="employeeDepartment" align="left"></td>       
  </tr>
</table>

<button type="submit">Insert a Employee</button>
</form>

<hr>

<form action="/home">
<button type="submit">Back to home</button>
</form>

</body>
</html>