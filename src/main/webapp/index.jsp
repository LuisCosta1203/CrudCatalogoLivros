<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Tela inicial</title>
</head>
<body>
<header>
CRUD relativo aos livros<br>
</header>
<nav>
<a href="formCreate.jsp" target="centro">Create</a>
<a href="readController.jsp" target="centro">Read</a>
<a href="formUpdate.jsp" target="centro">Update</a>
<a href="formDelete.jsp" target="centro">Delete</a>
<a href="formSearch.jsp" target="centro">Pesquisa</a>
</nav>

<main>
	<iframe name="centro" scrolling="no" style="overflow: hidden; border: none;"></iframe>
</main>

<footer>
<p>All Rights Reserved</p>
</footer>
</body>
</html>