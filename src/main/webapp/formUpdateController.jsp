<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Create"%>
<%@ page language="java" import="crud.Update"%>
<%@ page language="java" import="login.Sessao"%>

<%
	Sessao section = new Sessao();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<table width="100%">
<tr>
  	<th align="left"><h1>Atualização de Livros</h1></th>
    <th align="right">Usuário: <%= section.usuarioSessao()%></th>
  </tr>
</table>
<hr>
<!-- esse arquivo foi criado para exibir o formulario para inserção dos novos
	 dados as serem inseridos nos registros -->
<form name="formUpdate2" action="updateController.jsp" method="post">


<%
Update updater = new Update();
String id = request.getParameter("idlivros");
ResultSet rs = updater.updateRead(Integer.parseInt(id));
if(!rs.next()){
	out.print("Livro não encontrado!");
}
else{

%>
<p>
<label for="titulo">Id:</label> 
<input type="text" name="idlivros" id="idlivros" value="<%=rs.getString("idlivros") %>" readonly>
</p>
<p>
<label for="titulo">Titulo:</label> 
<input type="text" name="titulo" id="titulo" size="50" value="<%=rs.getString("titulo") %>" required>
</p>
<p>
<label for=autor>Autor:</label>
<input type="text" name="autor" id="autor" value="<%=rs.getString("autor") %>" required>
</p>
<p>
<label for="genero">Genero:</label>
<input type="text" name="genero" id="genero" value="<%=rs.getString("genero") %>"required>
</p>
<p>
<label for="sinopse">Sinopse:</label>
<input type="text" name="sinopse" id="genero" value="<%=rs.getString("sinopse") %>"required>
</p>
<p>
<label for="ano">Ano:</label>
<input type="text" name="ano" id="ano" value="<%=rs.getString("ano") %>"required>
</p>
<p>
<input type="submit" value="Salvar Alterações">
</p>
</form>

<%
}
%>


</body>
</html>