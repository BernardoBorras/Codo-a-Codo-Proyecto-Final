<%@page import="dao.PedidoDAO"%>
<%@page import="model.Pedido"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<%
	
	
	String nombre =request.getParameter("firstName");
	String apellido =request.getParameter("lastName");
	String usuario =request.getParameter("username");
	String mail =request.getParameter("email");
	String lugarentrega =request.getParameter("address");
	Integer localidad = Integer.valueOf(request.getParameter("localidad"));
	Integer provincia = Integer.valueOf(request.getParameter("provincia"));
	String codpostal =request.getParameter("zip");
	String formadepago =request.getParameter("paymentMethod"); // importante anotar como ppudimos recibir un dato en lugar del otro como opciones seleccionables en el formulario. Al momento de enviar esos datos. 
	String tarjtitular =request.getParameter("cc-name");
	String tarjnumero =request.getParameter("cc-number");
	String tarjvto =request.getParameter("cc-expiration");
	String tarjclave =request.getParameter("cc-cvv");
	
// Creo un objeto de la clase Pedido.java para guardarlo en la base de datos
// En su linea de creacion, enviamos como argumentos a su contructor. Los datos
// que recibimos del formulario. 	
	Pedido pedido = new Pedido(nombre, apellido, usuario, mail, lugarentrega, localidad, provincia, codpostal, formadepago, tarjtitular, 1, tarjvto, 11); 
//  																				//	Integer.valueOf(localidad), Integer.valueOf(provincia)	
// Creo un objeto de la clase PedidoDAO.java para utilizar su metodo, ese metodo
// recibe un objeto de la clase Pedido.java lo desmenuza e inserta cada una de 
// sus partes en un nuevo registro de la tabla. Mediante comandos sql.
	PedidoDAO pediDAO = new PedidoDAO();

// El metodo de este objeto pediDAO recibe un objeto y regresa un valor 
// bolleano. Esto nos permite saber si se pudo guardar en la DB. 
	Boolean okGuardado = pediDAO.guardarPedido(pedido);
	
    if (okGuardado) {
        out.println("El pedido se agregó correctamente <br>");
    } else {
        out.println("Error en agregar pedido <br>");
    }
	
    
    
    
	%>


</body>
</html>