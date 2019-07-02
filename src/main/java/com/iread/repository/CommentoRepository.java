package com.iread.repository;

import com.iread.models.Commento;
import com.iread.models.Post;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by ReniH on 12/28/2017.
 */
public interface CommentoRepository extends CrudRepository<Commento, String> {

    List<Commento> findAll();
    List<Commento> findByPostId(Integer postId);
    void delete (Commento commento);
}
