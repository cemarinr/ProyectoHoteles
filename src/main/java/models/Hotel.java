package models;

public class Hotel {
    private int id;
    private String nombre;
    private float puntuacion;
    private double valor;
    private String nombreBd;
    private String ciudad;

    public Hotel(int id, String nombre, float puntuacion, double valor, String nombreBd, String ciudad) {
        this.id = id;
        this.nombre = nombre;
        this.puntuacion = puntuacion;
        this.valor = valor;
        this.nombreBd = nombreBd;
        this.ciudad = ciudad;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public float getPuntuacion() {
        return puntuacion;
    }

    public double getValor() {
        return valor;
    }

    public String getNombreBd() {
        return nombreBd;
    }

    public String getCiudad() {
        return ciudad;
    }
}
