package com.iread.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

@Controller
public class FileUploadController {


    /**
     * Upload single file using Spring Controller
     */
    /*@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public
    @ResponseBody
    String uploadFileHandler(@RequestParam("title") String title,
                             @RequestParam("file_front") MultipartFile file_front,
                             @RequestParam("file_back") MultipartFile file_back) {
        MultipartFile files[] = {file_front, file_back};
        String ret = "";
        int i = 0;
        for (MultipartFile file : files) {


            if (!file.isEmpty()) {
                try {
                    byte[] bytes = file.getBytes();

                    // Creating the directory to store file
                    String rootPath = System.getProperty("catalina.home");
                    File dir = new File(rootPath + File.separator + "webapps" + File.separator + "ROOT" + File.separator + "WEB-INF" + File.separator + "classes" + File.separator + "img");
                    if (!dir.exists())
                        dir.mkdirs();

                    String name = (i > 0) ? title + "_back" : title + "_front";
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
        return ret;
    }*/
/*
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
    }*/
}