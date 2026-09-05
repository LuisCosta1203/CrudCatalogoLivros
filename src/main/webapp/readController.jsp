<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Read"%>

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
    </style>

<meta charset="UTF-8">
<head>
</head>

<title>Read</title>
</head>
<body>
<%
	Read reader = new Read();
	ResultSet rs = reader.read();
%>

<h1>Listar Livros</h1>
<hr>
<div name="tabela" id="tabela">
	<table border="1">
  <tr>
  	<th>Id</th>
    <th>Titulo</th>
    <th>Autor</th>
    <th>Genero</th>
    <th>Sinopse</th>
    <th>Ano</th>
    <!-- <th>Exclusão</th>
    <th>Alterar</th> -->
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
    <!--  <td><a href="deleteController.jsp?idlivros=<%= rs.getInt("idlivros") %>">Excluir</a></td>
    <td><a href="formUpdateController.jsp?idlivros=<%= rs.getInt("idlivros") %>&titulo=<%= rs.getString("titulo") %>&autor=<%= rs.getString("autor") %>&genero=<%= rs.getString("genero") %>&sinopse=<%= rs.getString("sinopse") %>&ano=<%= rs.getInt("ano") %>">Alterar</a></td> -->
  </tr>


	
<%
}
%>

</table>
</div>
</body>
</html>