<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>LISTADO ALUMNOS</h1>
	
	<table>
	 	<c:forEach items="${reservas}" var="reserva">
		   <tr>
	    	<td>Desti: ${reserva.desti}</td>
	    	<td>Preu: ${reserva.preu}</td>
	    	<td>Nom: ${reserva.nom}</td>
	    	<td>Telefon: ${reserva.telf}</td>
	    	<td>Persones: ${reserva.persones}</td>
	    	<td>Descompte: ${reserva.descompte}</td>
	    	<td>Data: ${reserva.data}</td>
	 	 </tr> 		  	
		</c:forEach>
	</table>
</body>
</html>