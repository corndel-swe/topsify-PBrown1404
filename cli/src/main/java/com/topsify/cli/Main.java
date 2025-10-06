package com.topsify.cli;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        try {
            Path filePath = Paths.get("reports", "users.json");
            List<String> FileContent = new ArrayList<>();
            FileContent = Files.readAllLines(filePath);
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
}
