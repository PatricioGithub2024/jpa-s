package pe.edu.cibertec.utiles;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import pe.edu.cibertec.domain.Categoria;
import pe.edu.cibertec.domain.Libro;

import java.util.Date;

public class JPAManyToOne {

    public static void main(String[] args) {

        // referenciar a la unidad de persistencia
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();

        //registrar un libro
        Libro libro = new Libro("A20", "Titulo 20", "Autor 20", new Date(), 200.23, null);

        //referenciar categoria
        Categoria categoria = em.find(Categoria.class, "C1");
        libro.setCategoria(categoria);

        em.getTransaction().begin();
        em.persist(libro);
        em.getTransaction().commit();

    }

}
