package pe.edu.cibertec.utiles;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import pe.edu.cibertec.domain.Libro;

import java.util.Date;

public class JPAPersist {

    public static void main(String[] args) {

        // referenciar a la unidad de persistencia
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();

        // registrar nuevo libro
        em.getTransaction().begin();
        em.persist(new Libro("A1","Titulo3","Autor 3",new Date(),100.5,null));
        em.getTransaction().commit();


    }

}
