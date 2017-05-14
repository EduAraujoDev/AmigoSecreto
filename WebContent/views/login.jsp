<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Login</title>
	</head>
	<body>
	<c:if test="${not empty erroLogin}">
		Aten��o! ${erroLogin}
	</c:if>
	<c:if test="${not empty novoLogin}">
		Aten��o! ${novoLogin}
	</c:if>
	<form action="efetuaLogin" method="post">
		<h2>Login</h2>
		
		<label for="login">Nome</label>
		<input type="text" id="login" name="login" size="20" placeholder="Nome" required autofocus>
		
	    <label for="senha">Senha</label>
    	<input type="password" id="senha" name="senha" size="20" placeholder="Senha" required>
    	
    	<button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>
	</form>
	<a href=<c:url value="/cadastraUsuario"/>>Novo Usu�rio</a>
	</body>
</html>