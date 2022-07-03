package model;

public class Localidades {

	private Integer id;
	private String nombre;
	
// Constructor	(para cuando queremos crear un registro)
	
	public Localidades(Integer id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;}
	
// geters and setters (obtener o editar un registro)	

	public Integer getId() {
		return id;}
	public void setId(Integer id) {
		this.id = id;}


	public String getNombre() {
		return nombre;}
	public void setNombre(String nombre) {
		this.nombre = nombre;}
	
// ya tenemos nuestra clase localidad, cada objeto de esta clase que 
// creemos, se le va a asignar como atributos, los elementos de un 
// registro. Por lo que cada objeto va a representar un registro. 	
	
}
