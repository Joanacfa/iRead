
package com.iread.repository;

import com.iread.models.Utente;
import org.springframework.data.repository.CrudRepository;

public interface UtenteRepository extends CrudRepository<Utente, String>{
    Utente findOneByNomeAndPassword(String username, String password);
    Utente findById(long id);
}

