<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="utf-8">
		<title>Página usuário</title>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />
	</head>
	<body>
		<div class="container">
			<h2 class="form-signin-heading">Página usuário</h2>
			<c:if test="${not empty sorteioMsg}">
				<div class="alert alert-warning" role="alert"><strong>Atenção!</strong> ${sorteioMsg}</div>
			</c:if>
		</div>
	</body>
</html>