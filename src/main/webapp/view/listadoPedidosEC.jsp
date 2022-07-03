<!doctype html>
<%@page import="model.Localidades"%>
<%@page import="dao.LocalidadDAO"%>
<%@page import="model.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="dao.PedidoDAO"%>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body class="text-center bg-light">
      
      <div class="container">
		   <div class="py-4 text-center">
		     <img class="d-block mx-auto mb-4" src="./images/logo.jpg" alt="Logo caba" width="72" height="72">
		     <h2>Pedidos</h2>
		     <p class="lead">Lisatdo de Pedidos pendientes</p>
		   </div>      	

			<table class="table table-hover table-sm">
			     <thead class="thead-dark">
			       <tr>
			         <th scope="col">Apellido</th>
			         <th scope="col">Nombre</th>
			         <th scope="col">Usuario</th>
			         <th scope="col">e-mail</th>
			         <th scope="col">Dirección</th>
			         <th scope="col">Localidad</th>
			         <th scope="col">Provincia</th>
			         <th scope="col">Código Postal</th>
			       </tr>
			     </thead>
			     <tbody>
			     <% 
			     // Creamos un objeto de la clase, pedidoDAO , en donde se encuentra el metodo listarPedidosEC()
			     PedidoDAO pedidoDAO = new PedidoDAO();	
			     
			     // el metodo listarPedidosEC() se conecta a la DB y con los datos de cada registro crea un objeto de la clase 
			     // Pedido. Finalmente, los retorna a todos, dentro de un List.  
			     List<Pedido> listaPedidos =  pedidoDAO.listarPedidosEC(); 
			     
			     
			     LocalidadDAO localidadDAO = new LocalidadDAO();
			     
			     // Con un for, recorremos todo el List, creando de manera dinamica el listado de pedidos que va a visualizar el usuario. 
			     for(int i=0;  i<listaPedidos.size();  i++) {
			    	 
			    	    Integer idLocalidad = listaPedidos.get(i).getLocalidad();
			    	    Localidades localidades = localidadDAO.buscarXID(idLocalidad);
			    	 
			    	 
			    	 	out.println("<tr>");
			    	 	out.println("<td>" + listaPedidos.get(i).getApellido() + "</td>");
			    	 	out.println("<td>" + listaPedidos.get(i).getNombre() + "</td>");
			    	 	out.println("<td>" + listaPedidos.get(i).getUsuario()+ "</td>");
			    	 	out.println("<td>" + listaPedidos.get(i).getMail() + "</td>");
			    	 	out.println("<td>" + listaPedidos.get(i).getLugarEntrega() + "</td>");
			    	 	out.println("<td>" + localidades.getNombre() + "</td>");
                    	out.println("<td>" + listaPedidos.get(i).getProvincia() + "</td>");
                    	out.println("<td>" + listaPedidos.get(i).getCodPostal() + "</td>");
			    	 	out.println("</tr>");
			     }		     
			     %>			     
			     </tbody>			
			
			</table>      
      </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>