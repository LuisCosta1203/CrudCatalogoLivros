<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h1>Login</h1>
<hr>
<!-- formulário que pega os dados para login -->
<form name="formLogin" action="loginController.jsp" method="post">
<p>
<label for="usuario">Usuário:</label> 
<input type="text" name="usuario" id="usuario" size="50" required>
</p>
<p>
<label for="senha">Senha:</label>
<input type="password" name="senha" id="senha" required>
</p>
<input type="submit" value="Login">

</form>

</body>
</html>