<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
<h1>Cadastrar Usuario</h1>
<hr>
<!-- formulário que pega os dados para inserir um novo livro -->
<form name="formLogin2" id="formLogin2" action="cadastroUsuarioController.jsp" method="post">

  <div>
  Tipo de Usuário: 
    <input type="radio" id="admin" name="tipo" value="admin">
    <label for="tipo">Administrador</label>
    
    <input type="radio" id="user" name="tipo" value="user">
    <label for="tipo">Padrão</label>
  </div>
<!--<p>
<label for="tipo">Tipo de Usuario:</label> 
<input type="text" name="tipo" id="tipo" size="50">
</p>
-->
<p>
<label for="usuario">Usuario:</label> 
<input type="text" name="usuario" id="usuario" size="50">
</p>
<p>
<label for="senha">Senha:</label>
<input type="password" name="senha" id="senha" size="50">
</p>
<p>
<label for="senha1">Repita a Senha:</label>
<input type="password" name="senha1" id="senha1" size="50">
</p>
<input type="submit" value="Registrar">
<!-- ao clicar em "Cadastrar livro" o formulario manda as informações dos campos pro arquivo createController.jsp -->
</form>

</body>
</html>