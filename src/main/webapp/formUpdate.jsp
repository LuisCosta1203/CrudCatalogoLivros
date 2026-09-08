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
<meta charset="UTF-8">
 <style>
        #tabela {
            height: 350px;
            overflow: auto;
            width: 50%;
  			margin: 0 auto;
        }
        form{
 		  width: 30%;       /* Ou um valor em pixels, ex: 400px */
		  margin: 0 auto; 
        }
    </style>
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
<form name="formUpdate" action="formUpdateController.jsp" method="get">
<p>
<label for="idlivros">Código do livro para alterar</label>
<input id="idlivros" type="number" name="idlivros" required>
<input type="submit" value="Alterar">
</p>
</form>
<br>
<%
	Read reader = new Read();
	ResultSet rs = reader.read();
%>
<div name="tabela" id="tabela">
	<table border="1">
  <tr>
  	<th>Id</th>
    <th>Título</th>
    <th>Autor</th>
    <th>Gênero</th>
    <th>Sinopse</th>
    <th>Ano</th>
    <th>Alterar</th>
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
    <!--<td><a href="deleteController.jsp?idlivros=<%= rs.getInt("idlivros") %>">Excluir</a></td>-->
    <td><a href="formUpdateController.jsp?idlivros=<%= rs.getInt("idlivros") %>&titulo=<%= rs.getString("titulo") %>&autor=<%= rs.getString("autor") %>&genero=<%= rs.getString("genero") %>&sinopse=<%= rs.getString("sinopse") %>&ano=<%= rs.getInt("ano") %>">Alterar</a></td>
     </tr>
	
<%
}
%>

</table>
</div>

</body>
</html>