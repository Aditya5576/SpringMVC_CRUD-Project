<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	font-family: cursive;
	font-weight: bold;
}

div {
	display: flex;
	align-items: center;
}

button {
	padding: 20px;
	border-radius: 10px;
	margin: 20px;
	border: none;
	position: relative;
	left: 650px;
	top: 50px;
	box-shadow: 0px 0px 10px black;
}

button:hover {
	scale: 1.2;
	box-shadow: 0px 0px 10px green;
}
</style>
</head>
<body>

	<h1 align="center" style="color: green">${msg}</h1>
	<h1 align="center" style="color: green">${del}</h1>

	<br>
	<br>
	<h1 align="center">WELCOME TO HOME PAGE</h1>
	<div align="center">
		<a href="add"><button>ADD</button></a><br> <br> <a
			href="fetch"><button>FETCH</button></a>
	</div>

</body>
</html>