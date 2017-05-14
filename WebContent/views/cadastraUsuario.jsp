<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cadastra Usuário</title>
	</head>
	<body>
	<form action="novoUsuario" method="post">
		<h2>Login</h2>
		
		<label for="login">Nome</label>
		<input type="text" id="login" name="login" size="20" placeholder="Nome" required autofocus>
		
	    <label for="senha">Senha</label>
    	<input type="password" id="senha" name="senha" size="20" placeholder="Senha" required>
    	
    	<label for="confirmarSenha">Confimar Senha</label>
    	<input type="password" id="confirmarSenha" name="confirmarSenha" size="20" placeholder="Senha" required>
    	
    	<button type="submit">Confirmar</button>
	</form>	
	</body>
</html>