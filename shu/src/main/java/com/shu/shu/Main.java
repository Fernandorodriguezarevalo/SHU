package com.shu.shu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Main {
    public static void main(String[] args){SpringApplication.run(Main.class,args);}

    @GetMapping("/")
    public String saludos(){
        return "Hola Clase";
    }
    @GetMapping("/Despedida")
    public String Despedida(){
        return "¡Adios!";
    }

    @GetMapping("/")
    public String Saludos(){
        return "Hola Clase";
    }
    @GetMapping("/Despedida")
    public String Despedida(){
        return "Adios!!";
    }

    @GetMapping("/")
    public String saludos(){
        return "Hola clase";

    }
    @GetMapping("/Despedida")
    public String Despedida(){
        return "Adios ";

    }





}
