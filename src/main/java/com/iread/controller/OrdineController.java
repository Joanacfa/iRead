package com.iread.controller;

import com.iread.models.Libro;
import com.iread.models.Ordine;
import com.iread.models.Utente;
import com.iread.repository.LibroRepository;
import com.iread.repository.OrdineRepository;
import com.iread.repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@RestController
public class OrdineController {

    @Autowired
    OrdineRepository ordineRepository;
    @Autowired
    LibroRepository libroRepository;

    @Autowired
    UtenteRepository utenteRepository;
    /*@RequestMapping(path = "/compraLibro", method = RequestMethod.POST)
    public String buyLibro(@RequestParam(value = "id", required = false) Long id,
                         @RequestParam(value = "quantitaLibro", required = false) Integer quantita,
                         @RequestParam(value = "totaleOrdine", required = false) Float totale
    ){

        Ordine ordine = new Ordine();
        String answer = "";
        if (id !=null) {
            Libro libro = libroRepository.findById(id);
            if(libro != null) {
                ordine.setLibro(libro);
                ordine.setBookName(libro.getTitolo());
                ordine.setBookAuthor(libro.getAutore());
                ordine.setDate(new Date());
                ordine.setQuantita(quantita);
                ordine.setTotale(totale);
                ordineRepository.save(ordine);
                answer= "/hello";
            }

        }

        else {
            System.out.print("E successo un errore!!");
            answer = "/basket";
        }
        return answer;

    }*/

    @RequestMapping(path = "/creaOrdine", method = RequestMethod.POST)
    public Ordine buyLibro(HttpServletRequest request,
                           @RequestParam(value = "utenteId", required = false) String utenteId,
                           @RequestParam(value = "utenteNome", required = false) String utenteNome,
                           @RequestParam(value = "id", required = false) Long id,
                           @RequestParam(value = "quantitaLibro", required = false) Integer quantita,
                           @RequestParam(value = "totaleOrdine", required = false) Float totale
    ) {

        Ordine ordine = new Ordine();
        Libro libro = libroRepository.findById(id);
        if (libro != null) {
            ordine.setLibro(libro);
            ordine.setDate(new Date());
            ordine.setQuantita(quantita);
            ordine.setTotale(totale);
//            ordine.setUtenteNome(utenteNome);
            ordine.setCustomerId(Long.parseLong(utenteId));
            ordineRepository.save(ordine);
        }

        else{

            throw new IllegalArgumentException("error1");
        }
        return ordine;
    }



    @RequestMapping(path = "/compraLibro", method = RequestMethod.POST)
    public Ordine buyLibro(HttpServletRequest request,
                         @RequestParam(value = "id", required = false) Long id,
                         @RequestParam(value = "quantitaLibro", required = false) Integer quantita,
                         @RequestParam(value = "totaleOrdine", required = false) String totale
    ) {
        Ordine ordine = new Ordine();
        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if (utenteSession != null) {
            String t = totale.substring(1);
            Float tot = Float.parseFloat(t);
            if (id != null) {
                Libro libro = libroRepository.findById(id);
                if (libro != null) {
                    ordine.setLibro(libro);
                    ordine.setDate(new Date());
                    ordine.setQuantita(quantita);
                    ordine.setTotale(tot);
                    ordine.setCustomerId(utenteSession.getId());
//                    ordine.setUtenteNome(utenteSession.getNome());
                    Utente utente = utenteRepository.findById(utenteSession.getId());
                    utente.setSugg_personalizzata(libro.getGenereId());
                    //utenteSession.setSugg_personalizzata(libro.getGenereId());
                    ordineRepository.save(ordine);
                    utenteRepository.save(utente);
                }
            }

        }
        else{

            throw new IllegalArgumentException("error1");
        }
        return ordine;
    }

}
