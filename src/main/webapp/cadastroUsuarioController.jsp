<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="login.Login"%>
    
<%
	String tipo = request.getParameter("tipo");
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");
	String senha1 = request.getParameter("senha1");
	
	Login loger = new Login();
	
	boolean user = loger.verificaUsuario(usuario);
	
	if(user == true){
	
	if(!senha.equals(senha1)){
%>
	<p>As senhas não coincidem!</p>
	<meta http-equiv="refresh" content="3 ;url=formCadastroUsuario.jsp?" target="centro">
<%
	}
	else{
	
	
	loger.register(tipo, usuario, senha);
%>
<p>Usuário cadastrado com sucesso</p>
<meta http-equiv="refresh" content="3 ;url=readController.jsp" target="centro">
<%
}
	}
	else{
%>
	<p>Usuário já Cadastrado!</p>
	<meta http-equiv="refresh" content="3 ;url=formCadastroUsuario.jsp" target="centro">
<%
	}
%> 

<!DOCTYPE html>
<html lang="pt-BR">
<head>
   <!-- esse bloco apenas espera 2 segundos e redireciona para o arquivo formSearch.jsp -->
    <!-- O número 2 representa os segundos antes do redirecionamento -->
    <!--  <meta http-equiv="refresh" content="2 ;url=formSearch.jsp" target="centro"> -->
    <title>Sucesso</title>
</head>
<body>
    <p>Redirecionando.</p>
</body>
</html>