
<%@page import="model.Provincias"%>
<%@page import="dao.ProvinciaDAO"%>
<%@page import="model.Localidades"%>
<%@page import="java.util.List"%>
<%@page import="dao.LocalidadDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
	<title>Title</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS v5.0.2 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>

<body class="bg-light text-center">
	<div class="container">
		<div class="py-4">
			<img src="images/logo.jpg" alt="Logo de Codo a Codo" class="mb-4" width="72" height="72">
			<h3>Formulario de pedido</h3>
			<p class="lead">Ingrese los datos del pedido</p>
		</div>

<div class="col-md-12">
	<form action="../controller/guardarPedido.jsp">
		<div class="row">
					<div class="col-md-6 mb-3">
						<label for="nombre">Nombre</label>
						<input type="text" name="firstName" id="firstName" required class="form-control" placeholder="Ingrese su nombre">
					</div>
					<div class="col-md-6 mb-3">
						<label for="apellido">Apellido</label>
						<input type="text" name="lastName" id="lastName" required class="form-control" placeholder="Ingrese su apellido">
					</div>
				</div>

		<div class="row">
					<div class="col-md-6 mb-3">
						<label for="usuario">Nombre de Usuario</label>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">@</span>
							<input type="text" name="username" id="username" required class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
						</div>						
					</div>
					<div class="col-md-6 mb-3">
						<label for="email">Email <span class="text-muted">(Opcional)</span></label>
						<input type="email" name="email" id="email" class="form-control" placeholder="Ingrese su e-mail">
					</div>
				</div>

		<div class="row">
			<div class="col-md-12 mb-3">
						<label for="direccion">Lugar de entrega</label>
						<input type="text" name="address" id="address" required class="form-control" placeholder="Ingrese la direcci�n de entrega del pedido">
					</div>
		</div>

	<div class="row">
		<div class="col-md-4 mb-3">
			<div class="mb-3">
				<label for="localidad">Localidad</label>
				<select class="form-select" name="localidad" id="localidad">
					<option selected>Seleccione una localidad</option>
						<% 
						LocalidadDAO localidadDAO = new LocalidadDAO();  
						List<Localidades> listLocalidades = localidadDAO.listarLocalidadades();
						
						for(int i=0; i < listLocalidades.size(); i++) {
						out.println("<option value='" + listLocalidades.get(i).getId() + "'>" + listLocalidades.get(i).getNombre() + "</option>");
						}	
						%>
					</select>
				</div>
			</div>



					<div class="col-md-4 mb-3">
						<div class="mb-3">
						  <label for="provincia">Provincia</label>
						  <select class="form-select" name="provincia" id="provincia">
							<% 
							ProvinciaDAO provDAOobj = new ProvinciaDAO();
							List<Provincias> listProvincias = provDAOobj.listaProvincias();
							
							for(int i=0; i < listProvincias.size(); i++ ) {
								out.println("<option value='" + listProvincias.get(i).getIdprovincia() + "'>" + listProvincias.get(i).getNombre() + "</option>");

							}															
							%>
						  </select>
						</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="codPostal">Codigo Postal</label>
						<input type="text" name="zip" id="zip" class="form-control" required placeholder="Ingrese su c�digo postal">
					</div>
				</div>

				<hr class="mb-6">

 			<h4 class="mb-3">Formas de Pago</h4>

				<label class="custom-control custom-radio">
				  <input type="radio" name="paymentMethod" id="paymentMethod" value="Tarjeta de credito" class="custom-control-input">
				  <span class="custom-control-indicator"></span>
				  <span class="custom-control-description">Tarjeta de credito</span>
				</label>
				<br>
				<label class="custom-control custom-radio">
					<input type="radio" name="paymentMethod" id="paymentMethod" value="Mercado Pago" class="custom-control-input">
					<span class="custom-control-indicator"></span>
					<span class="custom-control-description">Mercado Pago</span>
				</label>
  

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="titular">Nombre del Titular</label>
						<input type="text" name="cc-name" id="cc-name" class="form-control" required>
						<small class="text-muted">Ingrese el nombre como aparece en la tarjeta</small>
					</div>
					<div class="col-md-6 mb-3">
						<label for="nroTarjeta">N�mero de la Tarjeta</label>
						<input type="text" name="cc-number" id="cc-number" class="form-control" required>
						<small class="text-muted">Ingrese los 16 digitos de la tarjeta</small>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3 mb-3"></div>
					<div class="col-md-3 mb-3">
						<label for="fechaVto">Fecha de Vencimiento</label>
						<input type="text" name="cc-expiration" id="cc-expiration" class="form-control" required>
						<small class="text-muted">Ingrese los 4 itos sin espacios</small>
					</div>
					<div class="col-md-3 mb-3">
						<label for="codigoSeg">Código de Seguridad</label>
						<input type="text" name="cc-cvv" id="cc-cvv" class="form-control" required>
						<small class="text-muted">Ingrese los 3 dgitos</small>
					</div>
				</div>

				<div class="row">
					<button type="submit" class="btn btn-primary">Ingresar solicitud</button>
				</div>

			</form>


		</div>
	</div>
	
	
	


	<!-- Bootstrap JavaScript Libraries -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>

</html>