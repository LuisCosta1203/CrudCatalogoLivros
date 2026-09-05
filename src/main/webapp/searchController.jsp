<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Search"%>

<h1>Consulta de Livros</h1>
<hr>
<!--  Esse arquivo retorna somente o registro que contem os caracteres informados
	  no arquivo formSearch.jsp -->
<%
	Search searcher = new Search();
	//armazena o retorno do metodo serach da classse Search em uma variavel
	//resultset
	ResultSet rs = searcher.search(request.getParameter("titulo"));
%>
	<table border="1">
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
    <!-- <td><a href="deleteController.jsp?idlivros=<%= rs.getInt("idlivros") %>">Excluir</a></td> -->
  </tr>


	
<%
}
%>

</table>