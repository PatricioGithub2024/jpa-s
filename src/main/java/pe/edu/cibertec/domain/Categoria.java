package pe.edu.cibertec.domain;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.List;

@Entity
public class Categoria {

    @Id
    private String codigo;
    private String nombre;

    @OneToMany(mappedBy = "categoria", cascade = {CascadeType.PERSIST, CascadeType.REMOVE} )
    private List<Libro> libros;

    public Categoria() {
    }

    public Categoria(String codigo) {
        this.codigo = codigo;
    }

    public Categoria(String codigo, String nombre, List<Libro> libros) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.libros = libros;
    }

    @Override
    public String toString() {
        return "Categoria{" +
                "codigo='" + codigo + '\'' +
                ", nombre='" + nombre + '\'' +
                ", libros=" + libros +
                '}';
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Libro> getLibros() {
        return libros;
    }

    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }
}
