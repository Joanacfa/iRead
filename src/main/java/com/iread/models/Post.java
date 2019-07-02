package com.iread.models;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ReniH on 12/28/2017.
 */


@Entity
@Table(name = "post_tabella")

public class Post {

    @Id
    @GeneratedValue
    @Column(name = "post_id")
    private long id;
    @Column(name = "post_titolo",columnDefinition="LONGVARCHAR")
    private String postTitolo;
    @Column(name = "post_descrizione",columnDefinition="LONGVARCHAR")
    private String postDescrizione;
    @Column(name = "post_foto_path")
    private String postFotoPath;


    @Column(name = "post_data")
    private String postData;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="libro_id",nullable=false)
    @JsonManagedReference
    private Libro libro;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="id_utente",referencedColumnName = "id_utente",nullable=false)
    private Utente utente;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "postId")
    private Set<Commento> commenti = new HashSet<Commento>();

    public Post(String postTitolo, String postDescrizione, String postFotoPath, Libro postLibro, Utente utente, Set<Commento> commenti, Date dt) {
        this.postTitolo = postTitolo;
        this.postDescrizione = postDescrizione;
        this.postFotoPath = postFotoPath;
        this.libro = postLibro;
        this.utente = utente;
        this.commenti = commenti;
        this.postData = dt.toString();
    }

    public Post(){

    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPostTitolo() {
        return postTitolo;
    }

    public void setPostTitolo(String postTitolo) {
        this.postTitolo = postTitolo;
    }

    public String getPostDescrizione() {
        return postDescrizione;
    }

    public void setPostDescrizione(String postDescrizione) {
        this.postDescrizione = postDescrizione;
    }

    public String getPostFotoPath() {
        return postFotoPath;
    }

    public void setPostFotoPath(String postFotoPath) {
        this.postFotoPath = postFotoPath;
    }





    public Set<Commento> getCommenti() {
        return commenti;
    }

    public void setCommenti(Set<Commento> commenti) {
        this.commenti = commenti;
    }

    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
    }

    public String getPostData() {
        return postData;
    }

    public void setPostData(String postData) {
        this.postData = postData;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }
}
