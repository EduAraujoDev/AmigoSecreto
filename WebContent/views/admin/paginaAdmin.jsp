<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="utf-8">
		<title>Página Admin</title>
	</head>
	<body>
		<p>pagina admin</p>
		<c:if test="${not empty usuarioAtivo}">
			Atenção! ${usuarioAtivo}
		</c:if>
		<jsp:useBean id="usuarios" class="br.com.fiap.bean.UsuariosBean"/>
		<table class="table">
			<tr>
				<td>Id</td>
				<td>Nome</td>
				<td>Login</td>
				<td>Status</td>
			</tr>
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
	</body>
</html>