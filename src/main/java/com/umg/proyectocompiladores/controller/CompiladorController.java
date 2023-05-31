package com.umg.proyectocompiladores.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import umg.compiladores.Lexer;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;
import java.util.UUID;

@RestController
public class CompiladorController {

    StringBuilder builder = new StringBuilder();

    String nomArchivoTexto = "C:\\Users\\VICTUS\\Archivo-Compilador\\codigoCompilar.java";

    @PostMapping(value = "/recibirJava")
    public void recibirJava(@RequestParam("txtJava") String textoJava,
                            @RequestParam("fileJava")MultipartFile fileJava) {

        builder.append(System.getProperty("user.home"));
        builder.append(File.separator);
        builder.append("Archivo-Compilador");

        File folder = new File(builder.toString());
        if (!folder.exists()) {
            folder.mkdirs();
        }

        if (!textoJava.isEmpty()) {
            leerTexto(textoJava);
        } else if (!fileJava.isEmpty()) {
            leerArchivo(fileJava);
        } else {
            System.out.println("No se recibio ninguna entrada");
        }
    }


    public void leerArchivo(MultipartFile file) {
        byte[] bytes;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        Path path = Paths.get(builder.append(File.separator) + file.getOriginalFilename());
        try {
            Files.write(path, bytes);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void leerTexto(String txtJava) {
        try (BufferedWriter escritor = new BufferedWriter(new FileWriter(nomArchivoTexto))) {
            // Escribe la entrada de texto en el archivo
            escritor.write(txtJava);
            System.out.println("El archivo se ha creado correctamente.");
        } catch (IOException e) {
            System.out.println("Ocurrió un error al crear el archivo: " + e.getMessage());
        }
    }
}
