package com.iread.models;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name="genere_tabella")
public class Genere {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "genere_id", unique = true, nullable = false)
    private long genereId;

    @Column(name = "genereNome")
    private String genereNome;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "genereId")
    private Set<Libro> libri = new HashSet<Libro>();

    public Genere() {
    }

    public Genere(String genereNome, Set<Libro> libri) {
        this.genereNome = genereNome;
        this.libri = libri;
    }

    public long getGenereId() {
        return genereId;
    }

    public void setGenereId(long genereId) {
        this.genereId = genereId;
    }

    public String getGenereNome() {
        return genereNome;
    }

    public void setGenereNome(String genereNome) {
        this.genereNome = genereNome;
    }

    public Set<Libro> getLibri() {
        return libri;
    }

    public void setLibri(Set<Libro> libri) {
        this.libri = libri;
    }

    //adding books this way into the genre
    public void aggiungiLIbro(Libro libro) {

        getLibri().add(libro);
    }

}