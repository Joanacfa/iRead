package com.iread.repository;

import com.iread.models.Libro;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface LibroRepository extends CrudRepository<Libro, String>{

    List<Libro> findByTitoloContaining(String titolo);
     Libro save(Libro libro);
     Libro findById (Long id);
    void delete(Libro libro);
    List<Libro> findAll();
    List<Libro> findByGenereId(Long id);
//    Libro findByIsbn(String isbn);
    List<Libro> findByIsbn(String isbn);
}
