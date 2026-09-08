<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Create"%>
<%@ page language="java" import="login.Sessao"%>
    
<%
	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	String genero = request.getParameter("genero");
	String sinopse = request.getParameter("sinopse");
	//request.getparameter deve ser convertido pra integer
	Integer ano = Integer.parseInt(request.getParameter("ano"));
	Sessao session2 = new Sessao();
	Create create = new Create();
	System.out.println(session2.tipoUsuarioSessao());
	if(session2.tipoUsuarioSessao().equals("admin")){
		System.out.println("Usuário administrador");
		create.create(titulo, autor, genero, sinopse, ano);
		out.print("Livro Cadastrado!");
	}
	else{
		out.print("Usuário sem privilégios de Administrador");
	}
	
	//
	
	
	
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