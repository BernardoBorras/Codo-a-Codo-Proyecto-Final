package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Provincias;

public class ProvinciaDAO {

public List<Provincias> listaProvincias(){
try { 	
	ConexionDB conexionDB = new ConexionDB();
	Connection conne = conexionDB.establecerConexion();
	Statement ste = conne.createStatement();
	ResultSet resultSet = ste.executeQuery("SELECT * FROM provincias ORDER BY nombre");
	
	List<Provincias> listProv = new ArrayList<Provincias>();
	
	while (resultSet.next()) {
	Provincias provincias = new Provincias(resultSet.getInt("idprovincia"), resultSet.getString("nombre"));	
	listProv.add(provincias);
	}
	
	return listProv;
	
	
} catch (Exception e) {			
	e.printStackTrace();		
}
return null;
}	
	
	

}
	

	
