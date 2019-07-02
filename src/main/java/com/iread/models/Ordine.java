package com.iread.models;


import javax.persistence.*;
import java.awt.print.Book;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "ordine_tabella")
public class Ordine {

    @Id
    @GeneratedValue
    @Column(name="ordine_id")
    private long ordineId;



    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="libro_id",nullable=false)
    private Libro libro;


    @Column(name="customerId")
    private long customerId;

 /*   @Column(name="bookName")
    private String bookName;

    @Column(name="bookAuthor")
    private String bookAuthor;*/

//    @Column(name="utente_nome")
//    private String utenteNome;

    @Column(name="totale")
    private Float totale;



    @Column(name="quantita")
    private Integer quantita;

    @Column(name="date")
    private Date date;



    public Ordine(){

    }

    public long getOrdineId() {
        return ordineId;
    }

    public void setOrdineId(long ordineId) {
        this.ordineId = ordineId;
    }


    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    /*public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }
*/


    public float getTotale() {
        return totale;
    }

    public void setTotale(float totale) {
        this.totale = totale;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }


    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

//    public String getUtenteNome() {return utenteNome;}
//
//    public void setUtenteNome(String utenteNome) {this.utenteNome = utenteNome; }
}
