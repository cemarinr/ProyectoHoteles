package models;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class Reservacion {
	private int id;
    private int usuarioId;
    private int hotelId;
    private Date fechaInicio;
    private Date fechaFin;
    private Timestamp fechaReservacion;
    private String estado;
    private BigDecimal precioTotal;
    private int adultos;
    private int ninos;
    private int habitaciones;

    // Getters y Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUsuarioId() { return usuarioId; }
    public void setUsuarioId(int usuarioId) { this.usuarioId = usuarioId; }

    public int getHotelId() { return hotelId; }
    public void setHotelId(int hotelId) { this.hotelId = hotelId; }

    public Date getFechaInicio() { return fechaInicio; }
    public void setFechaInicio(Date fechaInicio) { this.fechaInicio = fechaInicio; }

    public Date getFechaFin() { return fechaFin; }
    public void setFechaFin(Date fechaFin) { this.fechaFin = fechaFin; }

    public Timestamp getFechaReservacion() { return fechaReservacion; }
    public void setFechaReservacion(Timestamp fechaReservacion) { this.fechaReservacion = fechaReservacion; }

    public String getEstado() { return estado; }
    public void setEstado(String estado) { this.estado = estado; }

    public BigDecimal getPrecioTotal() { return precioTotal; }
    public void setPrecioTotal(BigDecimal precioTotal) { this.precioTotal = precioTotal; }

    public int getAdultos() { return adultos; }
    public void setAdultos(int adultos) { this.adultos = adultos; }

    public int getNinos() { return ninos; }
    public void setNinos(int ninos) { this.ninos = ninos; }

    public int getHabitaciones() { return habitaciones; }
    public void setHabitaciones(int habitaciones) { this.habitaciones = habitaciones; }
}