<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />
	</head>
	<body>
		<div class="container">
			<c:if test="${not empty erroLogin}">
				<div class="alert alert-danger" role="alert"><strong>Atenção!</strong> ${erroLogin}</div>
			</c:if>
			<c:if test="${not empty novoLogin}">
				<div class="alert alert-success" role="alert"><strong>Atenção!</strong> ${novoLogin}</div>
			</c:if>
			<form class="form-signin" action=<c:url value="efetuaLogin"/> method="post">
				<h2 class="form-signin-heading">Login</h2>
				
				<label for="login" class="sr-only">Nome</label>
				<input type="text" class="form-control" id="login" name="login" size="20" placeholder="Nome" required autofocus>
				
			    <label for="senha" class="sr-only">Senha</label>
		    	<input type="password" class="form-control" id="senha" name="senha" size="20" placeholder="Senha" required>
		    	
		    	<button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>
			</form>
			<a href=<c:url value="/cadastraUsuario"/>>Novo Usuário</a>
		</div>
	</body>
</html>