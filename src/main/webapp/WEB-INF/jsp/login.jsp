<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<script type="text/javascript">
	window.setTimeout(function() {
		document.getElementById('alert').style.display = 'none';	
	}, 2500);
</script>
</head>
<body class="p-3">
	<c:if test="${param.logout != null}">
		<div id="alert" class="alert alert-success" role="alert">
			<b>You have successfully logged in!</b>
		</div>
	</c:if>
	<div class="login-form">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">Login</div>
						<div class="card-body">
							<form:form id="form" class="border border-2 rounded p-2">
									Please enter your username and password:
								<div class="input-group mb-3">
									<input type="text" id="username" name="username" placeholder="Username" class="form-control">
								</div>
								<div class="input-group mb-3">
									<input type="password" id="password" name="password" placeholder="Password" class="form-control">
								</div>
								<c:if test='${param.error != null}'>
									<div class="text-center text-danger">Something didn't match!</div>
								</c:if>
								<div class="d-flex justify-content-center mt-3">
									<input class="btn btn-primary" type="submit" value="Login">
								</div>
								<div class="d-flex justify-content-center mt-2 ">
									<a clas="btn btn-link" href="/register">Register an account</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>