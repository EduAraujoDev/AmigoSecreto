<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
	<head>
		<title>P�gina usu�rio</title>
	</head>
	<body>
		<p>pagina usuario</p>
		<c:if test="${not empty sorteioMsg}">
			Aten��o! ${sorteioMsg}
		</c:if>
		<table>
			<tr>
				<td>Codigo</td>
			</tr>
			<c:forEach var="grupo" items="${grupo}">
				<tr>
					<td>${grupo.codigo}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>