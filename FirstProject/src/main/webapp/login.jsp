<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center text-primary">Login</h1>
		<form action="Login" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email
					address</label> 
				<input name="email" type="email" class="form-control"
					id="email" aria-describedby="email">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label>
				<input name="password" type="password" class="form-control"
					id="password">
			</div>
			<button type="submit" class="mt-4 btn btn-primary">Login</button>
		</form>
		<p class="text-warning mt-4">El campo Password no puede esta vacio</p>
	</div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	
</body>
</html>