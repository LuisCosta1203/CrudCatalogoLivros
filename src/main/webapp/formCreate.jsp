<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
<h1>Cadastrar Livro</h1>
<hr>
<!-- formulário que pega os dados para inserir um novo livro -->
<form name="formCreate" action="createController.jsp" method="post">
<p>
<label for="titulo">Título:</label> 
<input type="text" name="titulo" id="titulo" size="50">
</p>
<p>
<label for="autor">Autor:</label>
<input type="text" name="autor" id="autor" size="50">
</p>
<p>
<label for="genero">Gênero:</label>
<input type="text" name="genero" id="genero" size="50">
</p>
<p>
<label for="sinopse">Sinopse:</label>
<input type="text" name="sinopse" id="genero" size="50">
</p>
<p>
<label for="ano">Ano:</label>
<input type="text" name="ano" id="ano" size="50">
</p>
<input type="submit" value="Cadastrar Livro">
<!-- ao clicar em "Cadastrar livro" o formulario manda as informações dos campos pro arquivo createController.jsp -->
</form>

</body>
</html>