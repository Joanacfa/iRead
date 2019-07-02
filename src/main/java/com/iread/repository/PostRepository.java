package com.iread.repository;

import com.iread.models.Libro;
import com.iread.models.Post;
import javafx.geometry.Pos;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by ReniH on 12/28/2017.
 */
public interface PostRepository extends CrudRepository<Post, String> {

    List<Post> findAll();
    Post save(Post p);
    Post findById (long id);
    List<Post> findPostsByLibro(Libro libro);
    void delete (Post post);
}

