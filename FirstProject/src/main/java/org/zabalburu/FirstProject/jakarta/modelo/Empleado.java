package org.zabalburu.FirstProject.jakarta.modelo;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Empleado {
	@EqualsAndHashCode.Include
	private Integer id;
	private String apellidos;
	private String nombre;
	private String email;
	private String password;
	private List<Tarea> tareas;
	
	private static Integer count = 0;
	
	@Override
	public String toString() {
		return this.nombre + " " + this.apellidos;
	}

	public Empleado(String apellidos, String nombre, String email, String password, List<Tarea> tareas) {
		super();
		count++;
		this.id = count;
		this.apellidos = apellidos;
		this.nombre = nombre;
		this.email = email;
		this.password = password;
		this.tareas = tareas;
	}
}
