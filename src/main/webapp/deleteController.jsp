<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Delete"%>
    
<%
	/*esse arquivo recebe o valor passado pelo formulario do arquivo 
	  formDelete.jsp e passa ele como parametro do metodo delete() da Classe Delete
	*/
	Integer id = Integer.parseInt(request.getParameter("idlivros"));

	Delete deleter = new Delete();
	
	deleter.delete(id);
	
	out.print("Exclusão concluída! Id do produto = "+ id);
	
%>   

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<!-- esse bloco apenas espera 2 segundos e redireciona para o arquivo formSearch.jsp -->
    <!-- O número 2 representa os segundos antes do redirecionamento -->
    <meta http-equiv="refresh" content="2 ;url=formSearch.jsp" target="centro">
    <title>Sucesso</title>
</head>
<body>
    <p>Redirecionando.</p>
</body>
</html>