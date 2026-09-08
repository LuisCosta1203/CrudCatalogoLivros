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
<!-- estilo aplicado somente a tabela desse arquivo -->
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
<title>Delete</title>
</head>
<body>

<table width="100%">
<tr>
  	<th align="left"><h1>Exclusão de Livro</h1></th>
    <th align="right">Usuário: <%= section.usuarioSessao()%></th>
  </tr>
</table>
<hr>
<!-- o dado de código enviado pelo botao submit será enviado pro arquivo 
	 deleteController.jsp -->
<form name="formDelete" action="deleteController.jsp" method="get">

<p>
<label for="idlivros">Código do livro para excluir</label>
<input id="idlivros" type="number" name="idlivros" required>
<input type="submit" value="Excluir">
</p>
</form>
<br>

<!-- essa parte do código é responsavel por exibir a tabela contendo
	 os valores dos registros da tabela no banco -->
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
    <th>Excluir</th>
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
    <!-- essa linha pega o valor do id da tabela e passa ele como parametro -->
   <td><a href="deleteController.jsp?idlivros=<%= rs.getInt("idlivros") %>">Excluir</a></td>
   <!--<td><a href="formUpdateController.jsp?idlivros=<%= rs.getInt("idlivros") %>&titulo=<%= rs.getString("titulo") %>&autor=<%= rs.getString("autor") %>&genero=<%= rs.getString("genero") %>&sinopse=<%= rs.getString("sinopse") %>&ano=<%= rs.getInt("ano") %>">Alteração</a></td>-->
  </tr>


	
<%
}
%>

</table>
</div>

</body>
</html>