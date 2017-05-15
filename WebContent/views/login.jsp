<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<title>Login</title>
	</head>
	<body>
	<c:if test="${not empty erroLogin}">
		Atenção! ${erroLogin}
	</c:if>
	<c:if test="${not empty novoLogin}">
		Atenção! ${novoLogin}
	</c:if>
	<form action=<c:url value="efetuaLogin"/> method="post">
		<h2>Login</h2>
		
		<label for="login">Nome</label>
		<input type="text" id="login" name="login" size="20" placeholder="Nome" required autofocus>
		
	    <label for="senha">Senha</label>
    	<input type="password" id="senha" name="senha" size="20" placeholder="Senha" required>
    	
    	<button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>
	</form>
	<a href=<c:url value="/cadastraUsuario"/>>Novo Usuário</a>
	</body>
</html>