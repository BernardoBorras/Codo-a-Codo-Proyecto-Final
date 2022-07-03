<%@page import="dao.UsuarioDAO"%>
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
		 // Inicio	
		 // 1. Obtiene los parámetro enviados desde la página login.html, llamados inputEmail e inputPassword
		 // 2. Los almacena en variables java. 
		 // 3. Crea un objeto de la clase UsuarioDAO.java llamado UsuarioDAO
		 
		 // 4. Crea una variable booleana llamada usuValido cuyo valor, es el valor que devuelve, invocar al metodo de ese objeto. 	
		 //    enviandole como parametros las variables que creamos en el paso 2. Al metodo de ese objeto le envias usuario y pass.
		 
		 // 5. Segun el valor que toma usuValido  sucede una u otra cosa, dictada por el if, else.    
		 //    Si usuValido == true : somos redireccionados a la pajina pedido.jsp 
		 //    Si usuValido == false : somos redireccionados a la misma pagina en donde estamos, con mensaje de error. 
		 
		 // fin 
		  
		String usuario = request.getParameter("inputEmail"); 
		String contrasenia = request.getParameter("inputPassword");
		
		
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Boolean usuValido = usuarioDAO.validarUsuarioYPass(usuario, contrasenia);
		
		if(usuValido.booleanValue()) {
			response.sendRedirect("../view/pedidoEC.jsp");
		} else {
			response.sendRedirect("../view/loginError.html");
			out.println("<p style='color:red'>Usuario o password incorrectos</p>");
		}
	
	%>

</body>
</html>