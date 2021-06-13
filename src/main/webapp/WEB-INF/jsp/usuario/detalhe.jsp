<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App tp3 - Joao Pedro</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	  <h2>Cadastramento de alunos</h2>
	  <form action="usuario/incluir" method="post">
	  
	    <div class="form-group">
	      <label for="nome">Nome:</label>
	      <input type="text" class="form-control" id="nome" placeholder="Informar seu nome" name="nome" value="Joao Pedro">
	    </div>
	  
	    <div class="form-group">
	      <label for="email">E-mail:</label>
	      <input type="email" class="form-control" id="email" placeholder="Informar email" name="email" value="joao.sousa@al.infnet.edu.br">
	    </div>
	    
	    <div class="form-group">
	      <label for="pwd">Senha:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Informar senha" name="senha" value="1234">
	    </div>
	       
	    <button type="submit" class="btn btn-default">Salvar</button>
	  </form>
	  
	  <c:if test="${not empty usuarios}">
		  <h2>Lista de usuários:</h2>       
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Matrícula</th>		      
		        <th>Nome</th>
		        <th>E-mail</th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="u" items="${usuarios}" >
		      <tr>
		      	<td>${u.id}</td>
		        <td>${u.nome}</td>
		        <td>${u.email}</td>		        
		      </tr>
		     </c:forEach>
		    </tbody>
		  </table>
	  </c:if>
	  
	  <c:if test="${empty usuarios}">
	  		<p>Não há usuários cadastrados no sistema!</p>
	  </c:if>
	  
	</div>

</body>
</html>