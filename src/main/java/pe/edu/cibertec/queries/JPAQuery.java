package pe.edu.cibertec.queries;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import pe.edu.cibertec.domain.Libro;

import java.awt.print.Book;
import java.util.List;

public class JPAQuery {

    public static void main(String[] args) {

        // referenciar a la unidad de persistencia
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();

        // select
        // TypedQuery<Libro> query = em.createQuery("Select l From Libro l", Libro.class);

        // select - where
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.autor = :autor", Libro.class);
        //query.setParameter("autor", "Claudia");

        // select - where ( > , < o = )
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.precio > :precio", Libro.class);
        //query.setParameter("precio", 50);

        // select - where - between
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.precio between :inicio and :fin", Libro.class);
        //query.setParameter("inicio", 30);
        //query.setParameter("fin", 50);

        // select - where - in
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.autor in ('Cesar', 'Claudia')", Libro.class);

        // select - valores escalares
        // distinct  ---- > para que valores no se repitan
        // TypedQuery<String> query = em.createQuery("Select distinct l.autor From Libro l where l.autor in ('Cesar', 'Claudia')", String.class);
        // upper  ---- > poner resultados en mayuscula
        // TypedQuery<String> query = em.createQuery("Select distinct upper(l.autor)  From Libro l where l.autor in ('Cesar', 'Claudia')", String.class);

        // select - order by
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l order by l.precio", Libro.class);

        // select - group by
        //TypedQuery<Object[]> query = em.createQuery("Select l.autor, count(l) From Libro l group by l.autor", Object[].class);

        // select - is null
        //TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.autor is null", Libro.class);

        // select - like
        TypedQuery<Libro> query = em.createQuery("Select l From Libro l where l.titulo like 'c%'", Libro.class);


        //obtener resultados
        List<Libro> resultado = query.getResultList();
        resultado.forEach(System.out::println);

        //vista por titulo de autor
        //resultado.forEach( item -> System.out.println(item.getTitulo()));

        //obtener resultados escalares
        //List<String> resultado = query.getResultList();
        //resultado.forEach(System.out::println);


        //obtener resultados con un OBJECT[]
        //List<Object[]> resultado = query.getResultList();
        //resultado.forEach( elemento -> System.out.println("Autor: " + elemento[0] + " -- " + "Cantidad: " + elemento[1]));


    }

}
