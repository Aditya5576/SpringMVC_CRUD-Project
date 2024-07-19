<%@page isELIgnored="false"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	font-family: inherit;
	font-weight: bold;
}

.main {
	height: 560px;
	width: 500px;
	background-color: #F7F9F2;
	border-radius: 10px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	position: relative;
	top: 100px;
	left: 500px;
	box-shadow: 0px 0px 10px black;
	border-radius: 10px;
}

form {
	background-color: #F7F9F2;
}

input {
	font-size: medium;
	background-color: #F7F9F2;
	height: 35px;
	width: 300px;
	border-radius: 10px;
	border-left: none;
	border-right: none;
	border-top: none;
}

button {
	background-color: #91DDCF;
	position: relative;
	left: 110px;
	padding: 10px;
	border-radius: 10px;
	border: none;
	padding: 20px;
	box-shadow: 0px 0px 10px black;
}

button:hover {
	scale: 1.2;
}
</style>
</head>
<body>
	<div class="main">
		<form action="add" method="post">

			<input type="text" placeholder=" Employee Name" name="name" value="${employee.name}"><br>
			<br> <input type="number" placeholder=" Employee Number"
				name="mobile" value="${employee.mobile}"><br> <br> <input type="text"
				placeholder=" Employee Domain" name="domain" value="${employee.domain}"><br> <br>
			<input type="email" placeholder=" Employee Email" name="email" value="${employee.email}"><br>
			<br> <input type="number" placeholder=" Employee Salary"
				name="salary" value="${employee.salary}"><br> <br> <br> 
				<button>DONE</button>




		</form>
	</div>

</body>
</html>