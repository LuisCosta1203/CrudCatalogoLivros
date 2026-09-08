<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page language="java" import="login.Sessao"%>
<%
	Sessao sessao = new Sessao();
	
	sessao.deleteSession();
	

%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
   <!-- esse bloco apenas espera 2 segundos e redireciona para o arquivo formSearch.jsp -->
    <!-- O número 2 representa os segundos antes do redirecionamento -->
    <meta http-equiv="refresh" content="2 ;url=formLogin.jsp" target="centro">
    <title>Sucesso</title>
</head>
<body>
<table width="100%">
<tr>
  	<th align="left"><h1>Logout</h1></th>
    <th align="right">Usuário: <%= sessao.usuarioSessao()%></th>
  </tr>
</table>
    <p>Redirecionando.</p>
</body>
</html>