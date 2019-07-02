package com.iread.models;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by ReniH on 12/28/2017.
 */
@Entity
@Table(name = "commento_tabella")
public class Commento {

    @Id
    @GeneratedValue
    @Column(name = "commento_id")
    private long id;
    @Column(name = "commento_descrizione")
    private String commentoDescrizione;

    @JoinColumn(name="post_id")
    private int postId;

    @Column(name = "commento_data")
    private String commentoData;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="id_utente",referencedColumnName = "id_utente",nullable=false)
    private Utente utente;

    public Commento(String commentoDescrizione, int postId, Utente utenteId, Date dt) {
        this.commentoDescrizione = commentoDescrizione;
        this.postId = postId;
        this.utente = utenteId;
        this.commentoData=dt.toString();
    }

    public Commento() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCommentoDescrizione() {
        return commentoDescrizione;
    }

    public void setCommentoDescrizione(String commentoDescrizione) {
        this.commentoDescrizione = commentoDescrizione;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
    }

    public String getCommentoData() {
        return commentoData;
    }

    public void setCommentoData(String commentoData) {
        this.commentoData = commentoData;
    }
}