package com.iread.controller;

/**
 * Created by ReniH on 12/11/2017.
 */
import com.iread.models.Utente;
import com.iread.repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.PagedList;
import org.springframework.social.facebook.api.Post;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

@Controller
public class FacebookController {

    private Facebook facebook;
    private ConnectionRepository connectionRepository;
    @Autowired
    UtenteRepository utenteRepository;

    @Inject
    public FacebookController(Facebook facebook, ConnectionRepository connectionRepository) {
        this.facebook = facebook;
        this.connectionRepository = connectionRepository;
    }

    @RequestMapping(path = "/fb", method = RequestMethod.GET)
    public String helloFacebook(Model model,HttpServletRequest request) {
        if (connectionRepository.findPrimaryConnection(Facebook.class) == null) {
            return "redirect:/connect/facebook"; //first time that we are making the request for login
        }
    else {
            String [] fields = { "id","name","birthday","email","location","hometown","gender","first_name","last_name"};
            User user = facebook.fetchObject("me", User.class, fields);
            String name=user.getName();
            String id=user.getId();
            String birthday=user.getBirthday();
            String email=user.getEmail();
            String gender=user.getGender();
            String firstname=user.getFirstName();
            String lastname=user.getLastName();
            model.addAttribute("name",name );
            model.addAttribute("birthday",birthday );
            model.addAttribute("email",email );
            model.addAttribute("gender",gender);
            model.addAttribute("firstname",firstname);
            model.addAttribute("lastname",lastname);
            model.addAttribute("facebookProfile", facebook.fetchObject("me", User.class, fields));
            PagedList<Post> feed = facebook.feedOperations().getFeed();
            model.addAttribute("feed", feed);


            Utente oneByUsernamePassword = utenteRepository.findOneByNomeAndPassword(name,id);

            if (oneByUsernamePassword != null) {
                request.getSession().setAttribute("utente", oneByUsernamePassword);
                return "index";
            } else {
                Utente ut = new Utente(1,name,email,id,1);
                utenteRepository.save(ut);
                request.getSession().setAttribute("utente", ut);
                return "index";
            }




        }
    }

}