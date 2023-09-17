package org.zabalburu.FirstProject.jakarta.dao;

import java.util.List;

import org.zabalburu.FirstProject.jakarta.modelo.Empleado;
import org.zabalburu.FirstProject.jakarta.modelo.Tarea;

public interface TareaDao {
	public List<Empleado> getEmpleados();
	public Empleado getEmpleado(Integer id);
	public void nuevaTarea(Tarea t);
	public Tarea getTarea(Integer id);
	Empleado login(String email, String password);
}
