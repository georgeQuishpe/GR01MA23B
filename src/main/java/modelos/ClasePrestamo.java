package modelos;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "prestamo", schema = "dbo", catalog = "gestorbibliotecario")
public class ClasePrestamo {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "idPrestamo", nullable = false)
    private int idPrestamo;
    @Basic
    @Column(name = "cedula", nullable = true, length = 10)
    private String cedula;
    @Basic
    @Column(name = "idLibro", nullable = true, length = 3)
    private String idLibro;
    @Basic
    @Column(name = "fechaPrestamo", nullable = true)
    private Date fechaPrestamo;
    @Basic
    @Column(name = "fechaDevolucion", nullable = true)
    private Date fechaDevolucion;
    @Basic
    @Column(name = "multa", nullable = true)
    private Boolean multa;

    public int getIdPrestamo() {
        return idPrestamo;
    }

    public void setIdPrestamo(int idPrestamo) {
        this.idPrestamo = idPrestamo;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(String idLibro) {
        this.idLibro = idLibro;
    }

    public Date getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(Date fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public Date getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(Date fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public Boolean getMulta() {
        return multa;
    }

    public void setMulta(Boolean multa) {
        this.multa = multa;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ClasePrestamo that = (ClasePrestamo) o;

        if (idPrestamo != that.idPrestamo) return false;
        if (cedula != null ? !cedula.equals(that.cedula) : that.cedula != null) return false;
        if (idLibro != null ? !idLibro.equals(that.idLibro) : that.idLibro != null) return false;
        if (fechaPrestamo != null ? !fechaPrestamo.equals(that.fechaPrestamo) : that.fechaPrestamo != null)
            return false;
        if (fechaDevolucion != null ? !fechaDevolucion.equals(that.fechaDevolucion) : that.fechaDevolucion != null)
            return false;
        if (multa != null ? !multa.equals(that.multa) : that.multa != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idPrestamo;
        result = 31 * result + (cedula != null ? cedula.hashCode() : 0);
        result = 31 * result + (idLibro != null ? idLibro.hashCode() : 0);
        result = 31 * result + (fechaPrestamo != null ? fechaPrestamo.hashCode() : 0);
        result = 31 * result + (fechaDevolucion != null ? fechaDevolucion.hashCode() : 0);
        result = 31 * result + (multa != null ? multa.hashCode() : 0);
        return result;
    }
}
