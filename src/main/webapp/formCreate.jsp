<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>

<h1>Cadastro de Livros</h1>
<hr>
<!-- formulário que pega os dados para inserir um novo livro -->
<form name="formCreate" action="createController.jsp" method="post">
<p>
<label for="titulo">Titulo:</label> 
<input type="text" name="titulo" id="titulo" size="50">
</p>
<p>
<label for=autor>Autor:</label>
<input type="text" name="autor" id="autor">
</p>
<p>
<label for="genero">Genero:</label>
<input type="text" name="genero" id="genero">
</p>
<p>
<label for="sinopse">Sinopse:</label>
<input type="text" name="sinopse" id="genero">
</p>
<p>
<label for="ano">Ano:</label>
<input type="text" name="ano" id="ano">
</p>
<input type="submit" value="Cadastrar Livro">
<!-- ao clicar em "Cadastrar livro" o formulario manda as informações dos campos pro arquivo createController.jsp -->
</form>

</body>
</html>