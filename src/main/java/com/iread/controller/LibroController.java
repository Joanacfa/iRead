package com.iread.controller;

import com.iread.models.*;
import com.iread.repository.*;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

import static com.iread.IreadApplication.API_KEY;
import static com.iread.IreadApplication.imgPath;

/**
 * Created by ReniH on 12/14/2017.
 */
@RestController
//@RequestMapping(value = "/admin")
public class LibroController {
    @Autowired
    LibroRepository libroRepository;
    @Autowired
    GenereRepository genereRepository;
    @Autowired
    PostRepository postRepository;
    @Autowired
    CommentoRepository commentoRepository;

    @Autowired
    UtenteRepository utenteRepository;


    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat ourFormatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", new Locale("us"));

/*

    @RequestMapping(value = "/searchBook", method = RequestMethod.GET)
    public @ResponseBody
    List<Libro> getLibri(@RequestParam String libroNome) {
        return simulateSearchResult(libroNome);

    }


    private List<Libro> simulateSearchResult(String libroNome) {

    */
/*    List<Libro> result = new ArrayList<Libro>();*//*

        List<Libro> byTitoloContaining = libroRepository.findByTitoloContaining(libroNome);

        // iterate a list and filter by tagName
*/
/*
        for (Libro libro : byTitoloContaining) {
            if (tag.getTagName().contains(tagName)) {
                result.add(tag);
            }
        }*//*


        return byTitoloContaining;
    }
*/



    @RequestMapping(path = "/searchBook", method = RequestMethod.GET)
    public List<Libro> cercaLibro(@RequestParam(value = "text", required = false) String text) {
        List<Libro> byTitoloContaining = libroRepository.findByTitoloContaining(text);
        return byTitoloContaining;
    }

    @RequestMapping(path = "/aggiungiLibro", method = RequestMethod.POST)
    public void aggiungiLibro(@RequestParam(value = "isbn_libro", required = false) String isbn,
                               @RequestParam(value = "titolo_Libro", required = false) String titolo,
                               @RequestParam(value = "autore_Libro", required = false) String autore,
                               @RequestParam(value = "genere_Libro", required = false) String genereNome,
                               @RequestParam(value = "prezzo_Libro", required = false) Float prezzo,
                               @RequestParam(value = "descrizione_Libro", required = false) String descrizione,
                              @RequestParam(value = "title", required = false) String title,
                               @RequestParam("file_front") MultipartFile file_front,
                               @RequestParam("file_back") MultipartFile file_back
                               ){

        Libro libro = new Libro();
        libro.setGenere_nome(genereNome);
        libro.setGenereId(0);
        if(genereNome.equals("Narrativa")) {
            libro.setGenereId(1);
        }
        else if(genereNome.equals("Gialli")) {
            libro.setGenereId(2);
        }
        else if(genereNome.equals("Fantasy e fantascienza")) {
            libro.setGenereId(3);
        }
        else if(genereNome.equals("Storia e archeologia")) {
            libro.setGenereId(4);
        }
        else if(genereNome.equals("Filosofia")) {
            libro.setGenereId(5);
        }
        else if(genereNome.equals("Arte")) {
            libro.setGenereId(6);
        }
        else if(genereNome.equals("Scienze")) {
            libro.setGenereId(7);
        }
        else if(genereNome.equals("Biografie")) {
            libro.setGenereId(8);
        }
        else if(genereNome.equals("Casa e cucina")) {
            libro.setGenereId(9);
        }
        else  {
            libro.setGenereId(10);
        }
        libro.setIsbn(isbn);
        libro.setTitolo(titolo);
        libro.setAutore(autore);
        libro.setPrezzo(prezzo);
        libro.setDescrizione(descrizione);




            MultipartFile files[] = {file_front, file_back};
            String ret = "";
            int i = 0;
            for (MultipartFile file : files) {


                if (!file.isEmpty()) {
                    try {
                        byte[] bytes = file.getBytes();

                        // Creating the directory to store file
                        String rootPath = System.getProperty("catalina.home");
                        File dir = new File(rootPath + File.separator + "webapps" + File.separator + "ROOT" + File.separator + "WEB-INF" + File.separator + "classes" +File.separator + "static" + File.separator + "img");
                        if (!dir.exists())
                            dir.mkdirs();
                        String extension= "." + file.getOriginalFilename().split("\\.")[1];
                        String name = (i > 0) ? title + "_back" : title + "_front";
                        if(i==0){
                           String longName  = "http://localhost:8080/img/" + name + extension;
                            libro.setFoto_front(longName);
                        }
                        else {
                            String longName  = "http://localhost:8080/img/" + name + extension;
                            libro.setFoto_back(longName);
                        }
                        // Create the file on server
                        File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + name + "." + file.getOriginalFilename().split("\\.")[1]);
                        BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                        stream.write(bytes);

                        BufferedImage in = javax.imageio.ImageIO.read(serverFile);
                        BufferedImage out = scaleImage(in,
                                BufferedImage.TYPE_INT_RGB, 188, 251);
                        javax.imageio.ImageIO.write(out, "JPG", serverFile);
                        stream.close();
                        File file2= new File(imgPath +File.separator +  name + extension );
                        Files.copy(serverFile.toPath(), file2.toPath());
                        ret = "1";
                    } catch (Exception e) {
                        ret = "0";
                        break;
                    }
                } else {

                    ret = "0";
                    break;
                }
                i++;
            }
           if(ret == "1") {

               libroRepository.save(libro);
           }
           else
           {
               System.out.print("E' successo un errore nell'aggiunta delle foto!");
               throw new IllegalArgumentException("Photo exedes limit");

           }

     //   return "admin";

    }


    @RequestMapping(path = "/getBookDetails", method = RequestMethod.GET)
    public String getLibroDettagli(@RequestParam(value = "id", required = false) Long id) {
        Libro libro = libroRepository.findById(id);
        return (libro.getTitolo());
    }

    @RequestMapping(path = "/getLastBooks", method = RequestMethod.POST)
    public List<Libro> getLastBooks() {
        List<Libro> libro = libroRepository.findAll();
        Collections.reverse(libro);

        if(libro.size()>10)
        {
            int size = libro.size();

            libro=libro.subList(0,9);



        }
        return libro;
    }

    @RequestMapping(path = "/category", method = RequestMethod.POST)
    public List<Libro> getCategoryBooks(@RequestParam(value = "cat", required = false) String cat) {
        int catId = 0;
        switch (cat) {
            case "Narrativa":
                catId = 1;
                break;
            case "Gialli":
                catId = 2;
                break;
            case "Fantasy e fantascienza":
                catId = 3;
                break;
            case "Storia e archeologia":
                catId = 4;
                break;
            case "Filosofia":
                catId = 5;
                break;
            case "Arte":
                catId = 6;
                break;
            case "Scienze":
                catId = 7;
                break;
            case "Biografie":
                catId = 8;
                break;
            case "Casa e cucina":
                catId = 9;
                break;
            case "Fumetti":
                catId = 10;
                break;
            default:
                catId = 0;
        }
        List<Libro> byGenereId = libroRepository.findByGenereId((long) catId);
        return byGenereId;
    }

    @RequestMapping(path = "/getAllLibri", method = RequestMethod.POST)
    public List<Libro> getAllLibri() {
        return libroRepository.findAll();
    }

    @RequestMapping(path = "/getAllCategories", method = RequestMethod.POST)
    public List<Genere> getAllCategories() {
        return genereRepository.findAll();
    }

    @RequestMapping(path = "/api/{isbn}/posts", method = RequestMethod.GET)
    public List<PostInvia> sendListaPost(@PathVariable("isbn") String isbn, @RequestParam(value = "api_key", required = true) String api_key, HttpServletResponse res) {
        if (api_key.equals(API_KEY)) {
            List<Libro> byIsbn2 = libroRepository.findByIsbn(isbn);
            if (byIsbn2.get(0) == null) {
                res.setStatus(404);
                return null;
            } else {
                List<Post> posts = byIsbn2.get(0).getPosts();
                List<PostInvia> postDaInviare = new ArrayList<>();
                if (posts != null && posts.size() > 0) {
                    for (int i = 0; i < posts.size(); i++) {
                        PostInvia postInvia = new PostInvia();
                        postInvia.setId(posts.get(i).getId());
                        String postData = posts.get(i).getPostData();
                        try {
                            Date postData1 = ourFormatter.parse(postData);
                            postData = formatter.format(postData1);
                        } catch (ParseException e) {
                            e.printStackTrace();
                        }
                        postInvia.setPostData(postData);
                        postInvia.setPostDescrizione(posts.get(i).getPostDescrizione());
                        postInvia.setPostTitolo(posts.get(i).getPostTitolo());
                        postInvia.setUserName(posts.get(i).getUtente().getNome());
                        postDaInviare.add(postInvia);
                    }
                    res.setHeader("Access-Control-Allow-Origin","*");
                    res.setHeader("Access-Control-Allow-Credentials","true");
                    res.setHeader("Access-Control-Allow-Methods","GET");
                    res.setHeader("Access-Control-Max-Age","3600");
                    res.setHeader("Access-Control-Allow-Headers","X-Requested-With,Content-Type, Authorization,Origin, Accept, Access-Control-Request-Method, Access-Control-Request-Headers");
                    return postDaInviare;
                } else {
                    res.setStatus(204);
                    return null;
                }
            }
        } else {
            res.setStatus(403);
            return null;
        }
    }

    @RequestMapping(path = "/eliminaLibro", method = RequestMethod.GET)
    public String eliminaLibro(@RequestParam(value = "id", required = false) Long id) {
        System.out.print("id is:" + id);

        Libro libro = libroRepository.findById(id);
        List<Post>  postLibro = postRepository.findPostsByLibro(libro);
        if(postLibro != null) {
            System.out.println("METODO: eliminaLibro, postLibro non e' empty");

            for (int i = 0; i < postLibro.size(); i++) {
                List<Commento> commentiPostLibro = commentoRepository.findByPostId((int)postLibro.get(i).getId());
                if(commentiPostLibro != null) {
                    for (int j = 0; j <commentiPostLibro.size() ; j++) {
                        commentoRepository.delete(commentiPostLibro.get(j));
                    }
                }

                postRepository.delete(postLibro.get(i));
            }
        }
        libroRepository.delete(libro);
        return "admin";
    }



    @RequestMapping(path = "/getSuggestion", method = RequestMethod.POST)
    public List<Libro> getSuggestion(@RequestParam(value = "id", required = false) Long id,
                                     HttpServletRequest request) {
        List<Libro> byGenereId;
        Utente utenteSession = (Utente) request.getSession().getAttribute("utente");
        if(utenteSession != null) {
            Utente utenteLogato = utenteRepository.findById(utenteSession.getId());
            byGenereId = libroRepository.findByGenereId(utenteLogato.getSugg_personalizzata());
        }
        else {
            Libro byId = libroRepository.findById(id);
            byGenereId = libroRepository.findByGenereId(byId.getGenereId());

        }

        for (int i = 0; i < byGenereId.size(); i++) {
            if (byGenereId.get(i).getId() == id) {
                byGenereId.remove(i);
                break;
            }

        }
        if (byGenereId.size() > 3) {
            byGenereId = byGenereId.subList(0, 3);
        }
        return byGenereId;

    }

    public static BufferedImage scaleImage(BufferedImage image, int imageType,
                                           int newWidth, int newHeight) {
        // Make sure the aspect ratio is maintained, so the image is not distorted
        double thumbRatio = (double) newWidth / (double) newHeight;
        int imageWidth = image.getWidth(null);
        int imageHeight = image.getHeight(null);
        double aspectRatio = (double) imageWidth / (double) imageHeight;

        if (thumbRatio < aspectRatio) {
            newHeight = (int) (newWidth / aspectRatio);
        } else {
            newWidth = (int) (newHeight * aspectRatio);
        }

        // Draw the scaled image
        BufferedImage newImage = new BufferedImage(newWidth, newHeight,
                imageType);
        Graphics2D graphics2D = newImage.createGraphics();
        graphics2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
                RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        graphics2D.drawImage(image, 0, 0, newWidth, newHeight, null);

        return newImage;
    }


    @RequestMapping(path = "/modificaLibro", method = RequestMethod.POST)
    public void modificaLibro(@RequestParam(value = "id", required = false) Long id,
                              @RequestParam(value = "isbn", required = false) String isbn,
                              @RequestParam(value = "titolo", required = false) String titolo,
                              @RequestParam(value = "autore", required = false) String autore,
                              @RequestParam(value = "genere", required = false) String genere,
                              @RequestParam(value = "prezzo", required = false) Float prezzo,
                              @RequestParam(value = "descrizione", required = false) String descrizione ) {
        System.out.print("id is:" + id);
        Libro libro = libroRepository.findById(id);
        libro.setIsbn(isbn);
        libro.setTitolo(titolo);
        libro.setAutore(autore);
        libro.setGenere_nome(genere);
        if(genere.equals("Narrativa")) {
            libro.setGenereId(1);
        }
        else if(genere.equals("Gialli")) {
            libro.setGenereId(2);
        }
        else if(genere.equals("Fantasy e fantascienza")) {
            libro.setGenereId(3);
        }
        else if(genere.equals("Storia e archeologia")) {
            libro.setGenereId(4);
        }
        else if(genere.equals("Filosofia")) {
            libro.setGenereId(5);
        }
        else if(genere.equals("Arte")) {
            libro.setGenereId(6);
        }
        else if(genere.equals("Scienze")) {
            libro.setGenereId(7);
        }
        else if(genere.equals("Biografie")) {
            libro.setGenereId(8);
        }
        else if(genere.equals("Casa e cucina")) {
            libro.setGenereId(9);
        }
        else  {
            libro.setGenereId(10);
        }
        libro.setPrezzo(prezzo);
        libro.setDescrizione(descrizione);
        libroRepository.save(libro);
    }

}
