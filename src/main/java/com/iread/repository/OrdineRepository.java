package com.iread.repository;
import com.iread.models.Ordine;
import org.springframework.data.repository.CrudRepository;


public interface OrdineRepository extends CrudRepository<Ordine, String> {
    Ordine save(Ordine ordine);

}
