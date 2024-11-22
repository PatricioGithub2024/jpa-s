package pe.edu.cibertec.utiles;

import jakarta.persistence.Entity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import pe.edu.cibertec.domain.Libro;

public class JPAFind {

    public static void main(String[] args) {

        // referenciar a la unidad de persistencia
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();

        // obtener libro
        Libro libro = em.find(Libro.class,"A1");
        System.out.println(libro.toString());
    }
}
