package ejbs;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;


@Stateless
@LocalBean
public class Reservacion implements ReservacionLocal {

	private int id, usuario_id, habitacion_id;
	private String fecha_inicio, fecha_fin,fecha_reservacion, estado;  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUsuario_id() {
		return usuario_id;
	}
	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
	}
	public int getHabitacion_id() {
		return habitacion_id;
	}
	public void setHabitacion_id(int habitacion_id) {
		this.habitacion_id = habitacion_id;
	}
	public String getFecha_inicio() {
		return fecha_inicio;
	}
	public void setFecha_inicio(String fecha_inicio) {
		this.fecha_inicio = fecha_inicio;
	}
	public String getFecha_fin() {
		return fecha_fin;
	}
	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public String getFecha_reservacion() {
		return fecha_reservacion;
	}
	public void setFecha_reservacion(String fecha_reservacion) {
		this.fecha_reservacion = fecha_reservacion;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	

		     
    public Reservacion() {
        
    }
    public void setReserva(int id, int usuario_id, int habitacion_id) {
    	this.id = id;
    	this.usuario_id = usuario_id;
    	this.habitacion_id = habitacion_id;
    }

}
