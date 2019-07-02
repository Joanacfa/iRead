package com.iread.models;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "utente_tabella")
public class Utente {
    @Id
    @Column(name = "id_utente")
    @GeneratedValue
    private long id;
    @Column(name = "ruolo_id")
    private int ruoloId;
    @Column(name = "nome")
    private String nome;
    @Column(name = "email")
    private String email;
    @Column(name = "password")
    private String password;
    @Column(name = "sugg_personalizzata")
    private long sugg_personalizzata;


    public Utente(int ruoloId, String nome, String email, String password, int sugg_personalizzata) {
        this.ruoloId = ruoloId;
        this.nome = nome;
        this.email = email;
        this.password = password;
        this.sugg_personalizzata = sugg_personalizzata;
    }

    public Utente() {
    }

    public long getIdUtente() {
        return id;
    }

    public void setIdUtente(long idUtente) {
        this.id = idUtente;
    }



    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getSugg_personalizzata() {
        return sugg_personalizzata;
    }

    public void setSugg_personalizzata(long sugg_personalizzata) {
        this.sugg_personalizzata = sugg_personalizzata;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getRuoloId() {
        return ruoloId;
    }

    public void setRuoloId(int ruoloId) {
        this.ruoloId = ruoloId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}


