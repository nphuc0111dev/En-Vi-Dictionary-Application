package main;

import java.sql.*;
import java.util.Scanner;

public class Game {

    private static final int MAX_ATTEMPTS = 3;

    public Game() {}

    public void play() {

        Scanner scanner = new Scanner(System.in);

        try (
                Connection conn = ConnectToDB.getConnection();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM dictionarydb.db ORDER BY RAND() LIMIT 1");
        ) {

            if(rs.next()) {

                String word = rs.getString("Word");
                String definition = rs.getString("Define");

                System.out.println("Question: " + definition);
                System.out.println("You have " + MAX_ATTEMPTS + " attempts!");


                for(int i=0; i < MAX_ATTEMPTS; i++) {
                    System.out.print("Enter guess: ");
                    String guess = scanner.nextLine();

                    if(guess.equalsIgnoreCase(word)) {
                        System.out.println("Correct!");
                    } else {
                        System.out.println("Incorrect! Try to guess again!");
                    }
                }

                System.out.println("The word was: " + word);

            } else {
                System.out.println("No words found");
            }

        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
        }

        scanner.close();
    }


    public static void main(String[] args) {
        Game game = new Game();
        game.play();
    }



}
