package com.iread.controller;

import com.iread.models.Utente;
import com.iread.repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ReniH on 12/14/2017.
 */
@RestController
public class UtenteController {
    @Autowired
    UtenteRepository utenteRepository;

//    @RequestMapping(path = "/addUser", method = RequestMethod.GET)
//    public String addUtente(@RequestParam(value = "nome", required = false) String nome,
//                            @RequestParam(value = "username", required = false) String username,
//                            @RequestParam(value = "password", required = false) String password,
//                            @RequestParam(value = "ruoloId", required = false) String ruoloId) {
//
//        Utente u = new Utente(nome, username, password, ruoloId, 0 );
//        Utente save = utenteRepository.save(u);
//        return (save.getIdUtente() > 0) ? "1" : "0";
//    }

    @RequestMapping(method = RequestMethod.POST, value = "/loginUser")
    public Utente loginUtente(HttpServletRequest request,
                              @RequestParam(value = "username", required = true) String username,
                              @RequestParam(value = "password", required = true) String pass) {

        Utente answer = null;
        Utente oneByUsernamePassword = utenteRepository.findOneByNomeAndPassword(username, pass);

        if (oneByUsernamePassword != null) {
            request.getSession().setAttribute("utente", oneByUsernamePassword);
            answer = oneByUsernamePassword;
        } else {
            throw new IllegalArgumentException("error1");
        }
        return answer;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/checkUser")
    public String checkUtente(HttpServletRequest request) {
        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if (utenteSession != null) {
            return String.valueOf(utenteSession.getIdUtente());
        } else return "0";
    }


}
