<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="crud.Delete"%>
<%@ page language="java" import="login.Sessao"%>
    
<%
	/*esse arquivo recebe o valor passado pelo formulario do arquivo 
	  formDelete.jsp e passa ele como parametro do metodo delete() da Classe Delete
	*/
	Integer id = Integer.parseInt(request.getParameter("idlivros"));

	Delete deleter = new Delete();
	
	Sessao session3 = new Sessao();
	System.out.println(session3.tipoUsuarioSessao());
	if(session3.tipoUsuarioSessao().equals("admin")){
		System.out.println("Usuário administrador");
		deleter.delete(id);
		out.print("Exclusão concluída! Id do produto = "+ id);
	}
	else{
		out.print("Usuário sem privilégios de Administrador");
	}
	
	
	
	
	
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