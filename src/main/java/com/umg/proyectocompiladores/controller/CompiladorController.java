package com.umg.proyectocompiladores.controller;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import umg.compiladores.Lexer;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import umg.compiladores.*;

@RestController
public class CompiladorController {

    StringBuilder builder = new StringBuilder();

    String nomArchivo = "codigoCompilar.java";


    @PostMapping(value = "/recibirJava")
    public void recibirJava(@RequestParam("txtJava") String textoJava,
                            @RequestParam("fileJava") MultipartFile fileJava,
                            HttpServletResponse response) throws IOException {

        File folder = new File(builder.toString());
        if (!folder.exists()) {
            folder.mkdirs();
        }

        if (!textoJava.isEmpty()) {
            System.out.println("Se recibio Texto");
            leerTexto(textoJava);

            response.sendRedirect("http://localhost:8080/index.html");
        } else if (!fileJava.isEmpty()) {
            System.out.println("Se recibio Archivo");
            leerArchivo(fileJava);
            response.sendRedirect("http://localhost:8080/index.html");
        } else if (!textoJava.isEmpty() && !fileJava.isEmpty()) {
            System.out.println("Solo debe ingresar un medio");
        } else {
            System.out.println("No se recibio ninguna entrada");
        }
    }


    public ArrayList<String> leerArchivo(MultipartFile file) {
        byte[] bytes;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        Path path = Paths.get(nomArchivo);
        try {
            Files.write(path, bytes);
            return compilarCup();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<String> leerTexto(String txtJava) {
        try (BufferedWriter escritor = new BufferedWriter(new FileWriter(nomArchivo))) {
            // Escribe la entrada de texto en el archivo
            escritor.write(txtJava);
            System.out.printf("Escritor  " + escritor);
            return compilarCup();
        } catch (IOException e) {
            System.out.println("Ocurrió un error al crear el archivo: " + e.getMessage());
        }
        return null;
    }

    public ArrayList<String> compilarCup() {
        try {
            System.out.printf(nomArchivo);
            Reader reader = new FileReader("C:/Users/VICTUS//IntelIJIDEA_proyectos/Proyecto-Compiladores/codigoCompilar.java");
            parser p = new parser(new Lexer(reader));
            Object result = p.parse().value;

            ArrayList<String> inverso = new ArrayList<String>(p.resultados);
            Collections.reverse(inverso);
            return inverso;

        } catch (FileNotFoundException ex) {
            Logger.getLogger(CompiladorController.class.getName()).log(Level.SEVERE, "Error al generar en cup ", ex);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
