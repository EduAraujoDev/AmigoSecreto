<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="utf-8">
		<title>Cadastra Usuário</title>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />
	</head>
	<body>
		<c:if test="${not empty senhaError}">
			<div class="alert alert-danger" role="alert"><strong>Atenção!</strong> ${Atenção}</div>
		</c:if>
		<div class="container">
			<form class="form-horizontal" action=<c:url value="novoUsuario"/> method="post">
				<h2 class="form-signin-heading">Login</h2>
				<div class="form-group">
					<label for="login" class="col-sm-2 control-label">Nome</label>
					<div class="col-sm-10">
      					<input type="text" class="form-control" id="nome" name="nome" size="20" placeholder="Nome" required>
    				</div>
				</div>
				<div class="form-group">
					<label for="login" class="col-sm-2 control-label">Login</label>
					<div class="col-sm-10">
      					<input type="text" class="form-control" id="login" name="login" size="20" placeholder="login" required>
    				</div>
				</div>
				<div class="form-group">
					<label for="senha" class="col-sm-2 control-label">Senha</label>
					<div class="col-sm-10">
      					<input type="password" class="form-control" id="senha" name="senha" size="20" placeholder="senha" required>
    				</div>
				</div>
				<div class="form-group">
					<label for="confirmarSenha" class="col-sm-2 control-label">Confimar Senha</label>
					<div class="col-sm-10">
      					<input type="password" class="form-control" id="confirmarSenha" name="confirmarSenha" size="20" placeholder="Nome">
    				</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-default" value="Confirmar"/>
					</div>
				</div>
			</form>
		</div>	
	</body>
</html>