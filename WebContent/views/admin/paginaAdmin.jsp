<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="utf-8">
		<title>Página Admin</title>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
 		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />
	</head>
	<body>
		<div class="container">
			<h2 class="form-signin-heading">Página Admin</h2>
			<c:if test="${not empty usuarioAtivo}">
				<div class="alert alert-success" role="alert"><strong>Atenção!</strong> ${usuarioAtivo}</div>
			</c:if>
			<a href=<c:url value="/admin/realizaSorteio"/>>Realizar Sorteio</a>
			<jsp:useBean id="usuarios" class="br.com.fiap.bean.UsuariosBean"/>
			<table class="table table-striped">
				<thead>
					<th>Id</th>
					<th>Nome</th>
					<th>Login</th>
					<th>Status</th>
				</thead>
				<c:forEach var="usuario" items="${usuarios.listaUsuarios}">
					<tr>
						<td>${usuario.id}</td>
						<td>${usuario.nome}</td>
						<td>${usuario.login}</td>
						
						<c:if test="${usuario.autorizado=='N'}">
							<td><a href="admin/ativarUsuario?id=${usuario.id}">Ativar</a></td>
						</c:if>
						<c:if test="${usuario.autorizado=='S'}">
							<td>Ativo</td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
</html>