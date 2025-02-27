<!-- Eric Recio & Antonio Palomino -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous">
        </script>

    <script defer src="paisos.js"></script>
    <link href="estil.css" rel="stylesheet" type="text/css">

    <title>Wonderfull Travels</title>
</head>

<body onload="init()">
    <div class="rellotge" id="data"></div>
    <div class="container">
        <div class="col-2">
        </div>
        <div class="col-8">
            <h1 class="titol">Wonderfull Travels</h1>
        </div>
        <div class="col-2">
        </div>
        <!-- col -->
        <form class="row g-3 needs-validation" novalidate action="afegirReservesControlador" method=post>
            <div class="col-md-2">
                <label for="validationCustom02" class="form-select">Destí</label><br>
                <select name="continents" class="form-select" aria-label="Default select example">
                    <option selected value="0"> Tria un destí </option>
                    <optgroup label="Europa">
                        <option value="1">Espanya</option>
                        <option value="2">França</option>
                        <option value="3">Portugal</option>
                    </optgroup>
                    <optgroup label="Asia">
                        <option value="10">China</option>
                        <option value="11">Japó</option>
                        <option value="12">India</option>
                    </optgroup>
                    <optgroup label="África">
                        <option value="10">Marroc</option>
                        <option value="11">Nigeria</option>
                        <option value="12">Senegal</option>
                    </optgroup>
                    <optgroup label="América">
                        <option value="10">Estats Units</option>
                        <option value="11">Argentina</option>
                        <option value="12">Brasil</option>
                    </optgroup>
                    <optgroup label="Oceania">
                        <option value="10">Australia</option>
                        <option value="11">Nova Zelanda</option>
                        <option value="12">Samoa</option>
                    </optgroup>
                </select>
                <br>
            </div>
            <div class="col-md-2">
                <label for="validationCustomUsername" class="form-label">Preu</label>
                <div class="input-group has-validation">
                    <input type="text" class="form-control" id="validationCustomUsername"
                        aria-describedby="inputGroupPrepend" required>
                </div>
            </div>
            <div class="col-md-3">
                <label for="validationCustom01" class="form-label">Data</label>
                <input type="date" class="form-control" id="validationCustom01" value="Data" required>
                <div class="valid-feedback">
                    Introdueïx una data.
                </div><br>
            </div>
            <div>
            </div>

            <!-- col -->
            <div class="col-4">
            </div>
            <div class="col-md-7">
                <label for="validationCustom03" class="form-label">Nom</label>
                <input type="text" class="form-control" id="validationCustom03" required>
                <div class="invalid-feedback">
                    Introdueïx un nom.
                </div><br>
            </div>
            <div class="col-md-3">
                <label for="validationCustom03" class="form-label">Telèf.</label>
                <input type="text" class="form-control" id="validationCustom03" required>
                <div class="invalid-feedback">
                    Introdueïx un telèfon vàlid.
                </div><br>
            </div>
            <div class="col-md-1">
                <label for="validationCustom05" class="form-label">Persones</label>
                <input type="text" class="form-control" id="validationCustom05" required>
                <div class="invalid-feedback">
                    Introdueïx quantitat de persones.
                </div><br>
            </div>
            <div class="col-4">
            </div>
            <!-- col -->
            <div class="col-2">
                <div class="form-check">
                    <br><br>
                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                    <label class="form-check-label" for="invalidCheck">
                        Descompte 20%
                    </label><br>
                </div>
            </div>
            <div class="col-2">
                <br><br>
                <button class="btn btn-warning" type="submit">Afegir reserva</button>
            </div>

            <div class="col-8">
            </div>
            <div class="col-4">
            </div>
        </form>
    </div>
    
    
    <!-- Mostrar las reservas -->
    <table>
	 	<c:forEach items="${reservas}" var="reserva">
		   <tr>
	    	<td>Desti: ${reserva.desti}</td><br>
	    	<td>Preu: ${reserva.preu}</td><br>
	    	<td>Nom: ${reserva.nom}</td><br>
	    	<td>Telefon: ${reserva.telf}</td><br>
	    	<td>Persones: ${reserva.persones}</td><br>
	    	<td>Descompte: ${reserva.descompte}</td><br>
	    	<td>Data: ${reserva.data}</td>
	    	
	    	<td><form action="esborrarReservesControlador" method="post">
                        <input type="hidden" name="id"  value="${reserva.id}"/>
                        <button type="submit">Eliminar</button>
                    </form>
                </td>
	 	 </tr> 		  	
		</c:forEach>
	</table><br>
</body>

</html>