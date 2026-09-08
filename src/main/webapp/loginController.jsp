<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.sql.*"
    
    
    %>

<%@ page language="java" import="conexao.Conexao"%>
<%@ page language="java" import="login.Login"%>
<%@ page language="java" import="login.Sessao"%>
    
<%
	Login loger = new Login();
	Sessao session1 = new Sessao();
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");
	//if(session1.verificaTipoUsuario().getString(1) == "luis"){
		boolean retorno = loger.verificaLogin(usuario, senha);
		if(retorno == true){
			if(loger.retornaTipoUsuarioSessao(usuario) == usuario){
			session1.createSession(usuario, loger.retornaTipoUsuario(usuario));
%>			
			<meta http-equiv="refresh" content="2 ;url=readController.jsp" target="centro">
<%			
			}
			else{
				out.print("Sessão já iniciada");
%>			
				<meta http-equiv="refresh" content="2 ;url=readController.jsp" target="centro">
<%	
			}
		}
			else{
				out.print("Usuário não cadastrado!!");
%>
			<meta http-equiv="refresh" content="2 ;url=formCadastroUsuario.jsp" target="centro">
<%
			}  
			
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
   <!-- esse bloco apenas espera 2 segundos e redireciona para o arquivo formSearch.jsp -->
    <!-- O número 2 representa os segundos antes do redirecionamento -->
   
    <title>Sucesso</title>
</head>
<body>
    <p>Redirecionando.</p>
</body>
</html>