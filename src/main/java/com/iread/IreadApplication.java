package com.iread;

import com.iread.repository.LibroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

import java.io.File;

@ComponentScan({"com.iread"})
@ServletComponentScan({"com.iread"})
@SpringBootApplication
public class IreadApplication extends SpringBootServletInitializer {
    @Autowired
    LibroRepository libroRepository;

    public static String API_KEY="b2rapikey";
    public static String imgPath= "F:"+ File.separator +"UNI"+ File.separator +"TAAS"+File.separator+"progetto"+File.separator+"iread"+File.separator+"src"+File.separator+"main"+File.separator+"resources"+File.separator+"static"+File.separator+"img";
    public static String externalPath ="http://192.168.0.3:8081";
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) { //necessary to run on tomcat
        return application.sources(IreadApplication.class);
    }

    public static void main(String[] args) {


        SpringApplication.run(IreadApplication.class, args);

    }

}




