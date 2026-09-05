<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"

    import="java.sql.*"
    %>
<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Update"%>

<!-- Esse arquivo recebe os dados do formulário formUpdateController.jsp e os envia 
	 como parametros pra classe Update por meio do método update()  -->
<%
	Integer idlivros = Integer.parseInt(request.getParameter("idlivros"));
	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	String genero = request.getParameter("genero");
	String sinopse = request.getParameter("sinopse");
	Integer ano = Integer.parseInt(request.getParameter("ano"));
	
	Update updater = new Update();
	
	updater.update(titulo, autor, genero, sinopse, ano, idlivros);
	
	out.print("Livro Alterado com Sucesso");
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

   