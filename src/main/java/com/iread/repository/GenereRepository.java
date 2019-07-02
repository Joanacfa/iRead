package com.iread.repository;

import com.iread.models.Genere;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GenereRepository extends CrudRepository<Genere, String> {
    Genere findByGenereId (Long id);
    List<Genere> findAll();
}
