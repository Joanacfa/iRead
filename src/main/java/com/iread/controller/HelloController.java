package com.iread.controller;

/**
 * Created by ReniH on 11/26/2017.
 */
import com.iread.models.*;
import com.iread.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class HelloController {
    @Autowired
    LibroRepository libroRepository;
    @Autowired
    UtenteRepository utenteRepository;
    @Autowired
    PostRepository postRepository;
    @Autowired
    OrdineRepository ordineRepository;


    @RequestMapping("/hello")
    public String hello(HttpServletRequest request) {
        return "index";
    }

    //Si usa per prendere tutti i dati di un libro e ti porta sulla pagina dettagliata di quel libro
    @RequestMapping(path = "/detailBook", method = RequestMethod.GET)
    public String dettagliLibro(@RequestParam(value = "id", required = true) int id,HttpServletRequest request){
        Libro byId = libroRepository.findById((long) id);
        request.getSession().setAttribute("detailBook",byId);
        return "detail";
    }
    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    @RequestMapping(path = "/admin", method = RequestMethod.GET)
    public String admin() {
        return "admin";
    }
    @RequestMapping(path = "/blog", method = RequestMethod.GET)
    public String allPosts(HttpServletRequest request) {

        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if(utenteSession!=null)
            return "blog/index";
        else return "login";
    }
    @RequestMapping(path = "/posts", method = RequestMethod.GET)
    public String getPost(@RequestParam(value = "postId", required = true) long postId,HttpServletRequest request) {
        Post p =postRepository.findById(postId);
        request.getSession().setAttribute("post",p);
        return "blog/single-post-2";
    }
    @RequestMapping(path = "/category", method = RequestMethod.GET)
    public String categorieLibro(@RequestParam(value = "cat", required = true) String category,HttpServletRequest request){
        String cat;
        switch(category){
            case "narrativa": cat="Narrativa";break;
            case "gialli": cat="Gialli";break;
            case "fantasy":cat="Fantasy e fantascienza"; break;
            case "storia": cat="Storia e archeologia";break;
            case "filosofia":cat="Filosofia"; break;
            case "arte": cat="Arte";break;
            case "scienze": cat="Scienze";break;
            case "biografie": cat="Biografie";break;
            case "casa": cat="Casa e cucina";break;
            case "fumetti": cat="Fumetti";break;
            default: cat="Categoria default";
        }

        request.getSession().setAttribute("category",cat);

        return "category";
    }


    @RequestMapping(path = "/logout", method = RequestMethod.GET)
    public String logoutAdmin(HttpServletRequest request) {
        request.getSession().invalidate();
            return "/login";
    }



    /*Si usa come metodo su IntelliJ per comprare un libro. */
    @RequestMapping(path = "/compraLibro", method = RequestMethod.GET)
    public void buyLibro(HttpServletRequest request,
                         @RequestParam(value = "id", required = false) Long id,
                         @RequestParam(value = "quantitaLibro", required = false) Integer quantita,
                         @RequestParam(value = "totaleOrdine", required = false) String totale
    ) {

        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if (utenteSession != null) {
            Ordine ordine = new Ordine();
            //Facciamo un substring visto che totaleOrdine ci arriva come String perche' contiene anche
            //il valore dell'euro
            String t = totale.substring(3);
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
                    utenteSession.setSugg_personalizzata(libro.getGenereId());
                    Utente utente = utenteRepository.findById(utenteSession.getId());
                    utente.setSugg_personalizzata(libro.getGenereId());
                    ordineRepository.save(ordine);
                    //facciamo anche save dell'utente perche' cambiamo i suoi suggerimenti personalizzati
                    //in base ai ultimi libri comprati dall'utente
                    utenteRepository.save(utente);
                }
            }

        }
        else{

            throw new IllegalArgumentException("error1");
        }
    }


    @RequestMapping(path = "/basket", method = RequestMethod.GET)
    public String carrelloLibro(@RequestParam(value = "id", required = true) int id,HttpServletRequest request){
        Libro byId = libroRepository.findById((long) id);
        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if (utenteSession != null) {
            request.getSession().setAttribute("detailBook", byId);
            return "basket";
        }
        else return "login";
    }

}