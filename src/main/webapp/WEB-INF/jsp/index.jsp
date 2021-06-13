<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App tp3 - Joao Pedro</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	  <h2>TP3 - Joao Pedro</h2>
	  
	  <h3>${nome}</h3>
	  <h3>${email}</h3>
	  <p><a href="${git}">Git</a></p>
	  
	  <form action="usuario" method="get">	         
	    <button type="submit" class="btn btn-default">Cadastrar usuário</button>
	  </form>
	  
	</div>

</body>
</html>