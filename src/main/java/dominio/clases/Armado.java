package dominio.clases;

public class Armado {

    private int idPiezaUsada;
    private int idEnsamble;
    private String nombrePieza;
    private double precioPieza;

    public Armado(String nombrePieza, double precioPieza) {
        this.nombrePieza = nombrePieza;
        this.precioPieza = precioPieza;
    }

    public String getNombrePieza() {
        return nombrePieza;
    }

    public void setNombrePieza(String nombrePieza) {
        this.nombrePieza = nombrePieza;
    }

    public double getPrecioPieza() {
        return precioPieza;
    }

    public void setPrecioPieza(double precioPieza) {
        this.precioPieza = precioPieza;
    }

    public Armado(int idPiezaUsada, int idEnsamble) {
        this.idPiezaUsada = idPiezaUsada;
        this.idEnsamble = idEnsamble;
    }

    public Armado(int idEnsamble) {
        this.idEnsamble = idEnsamble;
    }

    public int getIdPiezaUsada() {
        return idPiezaUsada;
    }

    public void setIdPiezaUsada(int idPiezaUsada) {
        this.idPiezaUsada = idPiezaUsada;
    }

    public int getIdEnsamble() {
        return idEnsamble;
    }

    public void setIdEnsamble(int idEnsamble) {
        this.idEnsamble = idEnsamble;
    }

}
