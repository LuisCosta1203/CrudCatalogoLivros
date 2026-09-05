<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Delete"%>
    
<%

	Integer id = Integer.parseInt(request.getParameter("idlivros"));

	Delete deleter = new Delete();
	
	deleter.delete(id);
	
	out.print("Exclusão concluída! Id do produto = "+ id);
	
%>   

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <!-- O número 5 representa os segundos antes do redirecionamento -->
    <meta http-equiv="refresh" content="2 ;url=formSearch.jsp" target="centro">
    <title>Sucesso</title>
</head>
<body>
    <p>Redirecionando.</p>
</body>
</html>