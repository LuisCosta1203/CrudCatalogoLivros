<%@page import="java.util.ListResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page language="java" import="crud.Read"%>
<%@ page language="java" import="conexao.LivrosBean"%>
<%@ page language="java" import="java.util.List"%>
<%@ page language="java" import="java.util.Iterator"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read</title>
</head>
<body>

<h1>Listar Livros</h1>
<hr>

<form name="formRead" action="readController.jsp" method="post">

<input type="submit" value="Listar Livros">
</form>
</body>
</html>