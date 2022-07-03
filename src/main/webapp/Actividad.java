package ejemplos;

import javax.swing.JOptionPane;

public class Actividad {
	
	public static void main(String[] args) {
		String nombre = JOptionPane.showInputDialog("Ingrese su nombre");
		System.out.println(nombre);

		String apellido = JOptionPane.showInputDialog("Ingrese su apellido");
		System.out.println(apellido);
	}

}
