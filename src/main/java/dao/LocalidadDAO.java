package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidades;

public class LocalidadDAO {
	


public List<Localidades> listarLocalidadades() {
	try {
			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
		    Statement st = conn.createStatement();
	        ResultSet resultSet = st.executeQuery("SELECT * FROM localidades ORDER BY nombrelocalidad");
	               
	  List<Localidades> listL = new ArrayList<Localidades>();      
	        

	    while (resultSet.next()) { 
	    	Localidades localidades = new Localidades(resultSet.getInt("idlocalidad"), resultSet.getString("nombrelocalidad"));
	    	listL.add(localidades);
	        }    	        	      
	    
	    return listL;
	    
	    	    
	} catch (Exception e) {			
			e.printStackTrace();		
		}
		return null;
	}

public Localidades buscarXID(Integer id) {
	try {
		ConexionDB conexionDB = new ConexionDB();
		Connection conn = conexionDB.establecerConexion();
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery("SELECT * FROM localidades WHERE idlocalidad = " + id);
		
		Localidades localidad = null; 
		if (rs.next()) {
			localidad = new Localidades(
				rs.getInt("idlocalidad"), 
				rs.getString("nombrelocalidad"));
		}
		
		return localidad;
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return null;
}




}
