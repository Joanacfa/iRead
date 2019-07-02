package com.iread.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "consumatore_tabella")
@PrimaryKeyJoinColumn(name="id_utente")
public class Consumatore extends Utente{

    @Column(name="cosumatore_indirizzo")
    private String consumatoreIndirizzo;
    @Column(name="consumatore_citta")
    private String consumatoreCitta;
    @Column(name="consumatore_phone")
    private String consumatorePhone;


    public Consumatore(String consumatoreIndirizzo, String consumatoreCitta,String consumatorePhone)
    {
        this.consumatoreIndirizzo=consumatoreIndirizzo;
        this.consumatoreCitta=consumatoreCitta;
        this.consumatorePhone=consumatorePhone;

    }

    Consumatore(){
    }


    public String getConsumatoreIndirizzo() {
        return consumatoreIndirizzo;
    }

    public void setConsumatoreIndirizzo(String consumatoreIndirizzo) {
        this.consumatoreIndirizzo = consumatoreIndirizzo;
    }

    public String getConsumatoreCitta() {
        return consumatoreCitta;
    }

    public void setConsumatoreCitta(String consumatoreCitta) {
        this.consumatoreCitta = consumatoreCitta;
    }

    public String getConsumatorePhone() {
        return consumatorePhone;
    }

    public void setConsumatorePhone(String consumatorePhone) {
        this.consumatorePhone = consumatorePhone;
    }
}
