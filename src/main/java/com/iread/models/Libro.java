package com.iread.models;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Entity
@Table(name = "libro_tabella")
public class Libro {

    @Id
    @GeneratedValue
    @Column(name = "libro_id")
    private long id;
    @Column(name = "libro_isbn")
    private String isbn;
    @Column(name = "libro_titolo")
    private String titolo;
    @Column(name = "libro_autore")
    private String autore;
    @Column(name = "genere_nome")
    private String genere_nome;
    @JoinColumn(name="genere_id")
    private long genereId;
    @Column(name = "libro_prezzo")
    private float prezzo;
    @Column(name = "libro_quanttita_disponibile")
    private int quantitaDisponibile;
    @Column(name = "libro_descrizione",length=2000)
    private String descrizione;
    @Column(name = "libro_fotofront")
    private String foto_front;

    @Column(name = "libro_fotoback")
    private String foto_back;
    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "libro")
    private Set<Ordine> ordini = new HashSet<>();


    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "libro")
    @JsonBackReference
    private List<Post> posts = new ArrayList<>();

    public Libro(String isbn, String titolo, String autore, String genere_nome, long genereId, float prezzo, int quantitaDisponibile, String descrizione, String foto_front, String foto_back, Set<Ordine> ordini, Set<Post> posts) {
        this.isbn = isbn;
        this.titolo = titolo;
        this.autore = autore;
        this.genere_nome = genere_nome;
        this.genereId = genereId;
        this.prezzo = prezzo;
        this.quantitaDisponibile = quantitaDisponibile;
        this.descrizione = descrizione;
        this.foto_front = foto_front;
        this.foto_back = foto_back;
      /*  this.ordini = ordini;*/
        //this.posts = posts;
    }

    public Libro(){
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getAutore() {
        return autore;
    }

    public void setAutore(String autore) {
        this.autore = autore;
    }

    public String getGenere_nome() {
        return genere_nome;
    }

    public long getGenereId() {
        return genereId;
    }

    public void setGenereId(long genereId) {
        this.genereId = genereId;
    }


    public void setGenere_nome(String genere_nome) {
        this.genere_nome = genere_nome;
    }



    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public int getQuantitaDisponibile() {
        return quantitaDisponibile;
    }

    public void setQuantitaDisponibile(int quantitaDisponibile) {
        this.quantitaDisponibile = quantitaDisponibile;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getFoto_front() {
        return foto_front;
    }

    public void setFoto_front(String foto_front) {
        this.foto_front = foto_front;
    }

    public String getFoto_back() {
        return foto_back;
    }

    public void setFoto_back(String foto_back) {
        this.foto_back = foto_back;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }
}


