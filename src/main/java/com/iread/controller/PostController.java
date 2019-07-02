package com.iread.controller;

import com.iread.models.*;
import com.iread.repository.CommentoRepository;
import com.iread.repository.LibroRepository;
import com.iread.repository.PostRepository;
import com.iread.repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import static com.iread.IreadApplication.*;
import static com.iread.controller.LibroController.scaleImage;

/**
 * Created by ReniH on 12/28/2017.
 */
@RestController
public class PostController {

    @Autowired
    PostRepository postRepository;

    @Autowired
    CommentoRepository commentoRepository;

    @Autowired
    UtenteRepository utenteRepository;

    @Autowired
    LibroRepository libroRepository;

    @RequestMapping(path = "/getAllPosts", method = RequestMethod.POST)
    public List<Post> listaPost() {
        List<Post> all = postRepository.findAll();
        return all;

    }

    @RequestMapping(path = "/getExternalReviews", method = RequestMethod.POST)
    public List<Recensione> getlistaRecensioni(@RequestParam(value = "isbn", required = false) String isbn) {
        List<Recensione> rates = null;
        RestTemplate restTemplate = new RestTemplate();
        try {
            ResponseEntity<List<Recensione>> rateResponse =
                    restTemplate.exchange(externalPath + "/api/book/pub/" + isbn + "/reviews?apikey=" + API_KEY,
                            HttpMethod.GET, null, new ParameterizedTypeReference<List<Recensione>>() {
                            });
            rates = rateResponse.getBody();
            if (rateResponse.getStatusCode().value() != 404 && rateResponse.getStatusCode().value() != 204 && rateResponse.getStatusCode().value() != 403) {
                for (int i = 0; i < rates.size(); i++) {
                    String reviewDate = rates.get(i).getReviewDate();
                    if (rates.get(i).getUserName() == null) {
                        rates.get(i).setUserName("userX");
                    }
                }
            } else {
            }
        }
        catch (Exception e )
        {
        }
        return rates;
    }




    @RequestMapping(path = "/getAllComments", method = RequestMethod.POST)
    public List<Commento> listaCommenti(HttpServletRequest request) {
        Post post = (Post) request.getSession().getAttribute("post");
        List<Commento> all = commentoRepository.findByPostId((int) post.getId());
        return all;

    }

    @RequestMapping(path = "/aggiungiPost", method = RequestMethod.POST)
    public Post aggiungiPost(@RequestParam(value = "titoloPost", required = false) String postTitolo,
                             @RequestParam(value = "post", required = false) String postDescrizione,
                             @RequestParam(value = "file", required = false) MultipartFile file,
                             @RequestParam(value = "libroId", required = false) int postLibro,
                             @RequestParam(value = "utenteId", required = false) int utenteId
    ) {
        Utente ut = utenteRepository.findById(utenteId);
        Libro byId = libroRepository.findById((long) postLibro);
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "webapps" + File.separator + "ROOT" + File.separator + "WEB-INF" + File.separator + "classes" + File.separator + "static" + File.separator + "img");
                if (!dir.exists())
                    dir.mkdirs();
//                    String extension= "." + file.getOriginalFilename().split("\\.")[1];
                String name = file.getOriginalFilename();
//                    if(i==0){
//                        String longName  = "http://localhost:8080/img/" + name + extension;
//                        libro.setFoto_front(longName);
//                    }
//                    else {
//                        String longName  = "http://localhost:8080/img/" + name + extension;
//                        libro.setFoto_back(longName);
//                    }
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);

                BufferedImage in = javax.imageio.ImageIO.read(serverFile);
                BufferedImage out = scaleImage(in,
                        BufferedImage.TYPE_INT_RGB, 400, 400);
                javax.imageio.ImageIO.write(out, "JPG", serverFile);
                stream.close();
                File file2 = new File(imgPath + File.separator + name);
                Files.copy(serverFile.toPath(), file2.toPath());

                Post save = postRepository.save(new Post(postTitolo, postDescrizione, "http://localhost:8080/img/" + name, byId, ut, null, new Date()));
                return save;

            } catch (Exception e) {
                Post save = postRepository.save(new Post(postTitolo, postDescrizione, null, byId, ut, null, new Date()));
                return save;

            }
        } else {
            Post save = postRepository.save(new Post(postTitolo, postDescrizione, null, byId, ut, null, new Date()));
            return save;


        }


    }

    @RequestMapping(path = "/addComment", method = RequestMethod.POST)
    public Commento addComment(@RequestParam(value = "commentoDescrizione", required = false) String commentoDescrizione,
                               @RequestParam(value = "postId", required = false) int postId,
                               @RequestParam(value = "utenteId", required = false) int utenteId) {
        Utente byId = utenteRepository.findById(utenteId);
        Commento save = commentoRepository.save(new Commento(commentoDescrizione, postId, byId, new Date()));
        return save;
    }

}