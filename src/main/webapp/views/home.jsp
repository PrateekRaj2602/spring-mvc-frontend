<html>
<head>
<style>
h1 {text-align: center;}
h2 {text-align: center;}
body {text-align: center;}
body {
   font-family: Arial, Helvetica, sans-serif;
}
* {
   box-sizing: border-box;
}

form label {
   margin: 5px 10px 5px 0;
}
form input {
   margin: 5px 10px 5px 0;
   padding: 10px;
}
form button {
   padding: 10px 20px;
   font-size: 20px;
   background-color: rgb(39, 22, 141);
   border: 1px solid #ddd;
   color: white;
   cursor: pointer;
   font-weight: bolder;
   border-radius: 4px;
}
form button:hover {
   background-color: rgb(113, 65, 225);
}
@media (max-width: 800px) {
   form input {
      margin: 10px 0;
   }
   form {
      flex-direction: column;
      align-items: stretch;
   }
}
</style>

</head>


<body>
<h1> Welcome to my application </h1>
<h2> Home Page </h2>

<hr>
<hr>

<form action="/showAll">
<button type="submit">Fetch All Employees</button>
</form>

<hr>

<form action="/insertEmployee" method="post">
<table style="margin-left:auto; margin-right:auto;">
  <tr>
    <td>Id</td>
    <td><input type="text" name="employeeId" align="left"></td>      
  </tr>
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

<form action="/UpdateById" method = "post">
<table style="margin-left:auto; margin-right:auto;">
  <tr>
    <td>Id</td>
    <td><input type="text" name="employeeId" align="left"></td>      
  </tr>
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

<button type="submit">Updating Existing Employee</button>
</form>
<hr>

<form action="/showById">

<table style="margin-left:auto; margin-right:auto;">
  <tr>
    <td>Id</td>
    <td><input type="text" name="employeeId" align="left"></td>      
  </tr>
 </table> 
<button type="submit">Fetch Employee By Id</button>
</form>
<hr>

<form action="/deleteById" method = "post">

<table style="margin-left:auto; margin-right:auto;">
  <tr>
    <td>Id</td>
    <td><input type="text" name="employeeId" align="left"></td>      
  </tr>
 </table> 
<button type="submit">Delete Employee By Id</button>
</form>

</body>
</html>