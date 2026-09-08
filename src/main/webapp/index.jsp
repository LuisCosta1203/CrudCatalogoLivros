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
<table width="100%">
<tr>
  	<th align="left">Projeto Acervo de Livros</th>
    <th align="right"><a href="formLogin.jsp" target="centro">Login</a>/<a href="formLogout.jsp" target="centro">Logout</a></th>
  </tr>
</table>




</header>

<nav>
<a href="formCreate.jsp" target="centro">Adicionar</a>
<a href="readController.jsp" target="centro">Listar</a>
<a href="formUpdate.jsp" target="centro">Atualizar</a>
<a href="formDelete.jsp" target="centro">Deletar</a>
<a href="formSearch.jsp" target="centro">Pesquisar</a>

</nav>

<!-- bloco responsavel por criar uma area onde todas as paginas irão aparecer
	 Como se fosse uma página aparecendo dentro da outra -->
<main>
	<iframe src="livro.html" name="centro" scrolling="no" style="overflow: hidden; border: none;">
	</iframe>
</main>

<footer>
<p>&copy; <span id="year"></span> Luis Augusto & Thais Carvalho. Todos os direitos reservados.</p>
<script>
  document.getElementById("year").textContent = new Date().getFullYear();
</script>

</footer>
</body>
</html>