<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Create"%>
    
<%

	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	String genero = request.getParameter("genero");
	String sinopse = request.getParameter("sinopse");
	Integer ano =Integer.parseInt(request.getParameter("ano"));
	
	Create create = new Create();
	
	create.create(titulo, autor, genero, sinopse, ano);
	
	out.print("Livro Cadastrado!");
	
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