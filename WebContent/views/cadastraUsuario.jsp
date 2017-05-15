<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<title>Cadastra Usuário</title>
	</head>
	<body>
	<c:if test="${not empty senhaError}">
		Atenção! ${senhaError}
	</c:if>
	<form action=<c:url value="novoUsuario"/> method="post">
		<h2>Login</h2>

		<label for="login">Nome</label>
		<input type="text" id="nome" name="nome" size="20" placeholder="Nome" required autofocus>
		
		<label for="login">Login</label>
		<input type="text" id="login" name="login" size="20" placeholder="Nome" required autofocus>
		
	    <label for="senha">Senha</label>
    	<input type="password" id="senha" name="senha" size="20" placeholder="Senha" required>
    	
    	<label for="confirmarSenha">Confimar Senha</label>
    	<input type="password" id="confirmarSenha" name="confirmarSenha" size="20" placeholder="Senha" required>
    	
    	<button type="submit">Confirmar</button>
	</form>	
	</body>
</html>