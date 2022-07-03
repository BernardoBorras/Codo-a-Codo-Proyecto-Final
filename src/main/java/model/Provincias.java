package model;

public class Provincias {

	private Integer idprovincia;
	private String nombre;
	
	// Constructor	(para cuando queremos crear un registro)	
	
	public Provincias(Integer idprovincia, String nombre) {
		super();
		this.idprovincia = idprovincia;
		this.nombre = nombre;
	}

	// geters and setters (obtener o editar un registro)	

	public Integer getIdprovincia() {
		return idprovincia;}
	public void setIdprovincia(Integer idprovincia) {
		this.idprovincia = idprovincia;}

	
	public String getNombre() {
		return nombre;}
	public void setNombre(String nombre) {
		this.nombre = nombre;}
	
	
	
	
}
