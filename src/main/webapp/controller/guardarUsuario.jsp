<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link href="./css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%
	
	// Recibe los 2 parametros del formulario  crearUsuario.jsp 
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");
	
	// Crea un objeto de la clase Usuario y establece como sus atributos, los datos del formulario.  
	Usuario usuario = new Usuario(user,pass);
	
	// Crea un objeto de la clase usuarioDAO , para utilizar su metodo, guardarUsuario()
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	// El metodo retorna un booleano que confirma si se pudo almacenar en la DB, por lo que creamos una variable booleana, para recibirlo. 
	Boolean okGuardado = usuarioDAO.guardarUsuario(usuario);
	
	// Dependiendo del valor retornado por el metodo, imprimimos en pantalla confirmacion o negacion. 
	   if (okGuardado) {
	        out.println("Pedido agregado exitosamente");
	    } else {
	        out.println("Error en agregar usuario <br>");
	    }	
	%>

</body>
</html>