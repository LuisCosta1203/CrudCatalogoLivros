<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
    
 <%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Read"%>
<%@ page language="java" import="login.Sessao"%>

<%
	Sessao section = new Sessao();
%>
<!DOCTYPE html>
<html>
<head>
    <style>
        #tabela {
            height: 350px;
            overflow: auto;
            width: 50%;
  			margin: 0 auto;
        }
        form{
 		  width: 40%;       /* Ou um valor em pixels, ex: 400px */
		  margin: 0 auto; 
        }
    </style>

<meta charset="UTF-8">
<head>
</head>

<title>Delete</title>
</head>
<body>
<table width="100%">
<tr>
  	<th align="left"><h1>Consultar Livros</h1></th>
    <th align="right">Usuário: <%= section.usuarioSessao()%></th>
  </tr>
</table>
<hr>
<form name="formSearch" action="searchController.jsp" method="get">

<p>
<label for="titulo">Pesquise o nome do livro:</label>
<input id="titulo" type="text" name="titulo" required>
<input type="submit" value="Consultar">
</p>

<!-- esse bloco apenas exibe a tabela com os valores do banco -->
</form>
<br>
<%
	Read reader = new Read();
	ResultSet rs = reader.read();
%>
<div name="tabela" id="tabela">
	<table border="1" align>
  <tr>
  	<th>Id</th>
    <th>Título</th>
    <th>Autor</th>
    <th>Gênero</th>
    <th>Sinopse</th>
    <th>Ano</th>
  </tr>
  
<%
while(rs.next()) {
%>
	

  <tr>
  	<td><%= rs.getInt("idlivros") %></td>
    <td><%= rs.getString("titulo") %></td>
    <td><%= rs.getString("autor") %></td>
    <td><%= rs.getString("genero") %></td>
    <td><%= rs.getString("sinopse") %></td>
    <td><%= rs.getString("ano") %></td>
  </tr>


	
<%
}
%>

</table>
</div>
</body>
</html>