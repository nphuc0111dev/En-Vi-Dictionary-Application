package base;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class DictionaryManagement {
    private final Dictionary dictionary = new Dictionary();

    public Dictionary getDictionaryManagement() {
        return dictionary;
    }

    public void insertFromCommandline(String target, String explain) {
        Word wordInput = new Word(target, explain);
        dictionary.add(wordInput);
    }

    public void insertFromFile() {
        try (FileInputStream fileInputStream =
                     new FileInputStream("src/main/resources/dictionary.txt");
             Scanner sc = new Scanner(fileInputStream)) {
            while (sc.hasNextLine()) {
                String wordInput = sc.nextLine();
                String target = wordInput.split("\t")[0];
                String explain = wordInput.split("\t")[1];
                Word word = new Word(target, explain);
                dictionary.add(word);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String dictionaryLookup(String find) {
        find = find.toLowerCase();
        for (Word wordInput : dictionary.getDictionaryArray()) {
            String key = wordInput.getWord_target().trim().toLowerCase();
            if (key.equals(find)) {
                return wordInput.getWord_explain();
            }
        }
        return String.format("Can't find any words with %s\n", find);
    }

    public boolean dictionaryDelete(String find) {
        find = find.toLowerCase();
        for (int i = 0; i < dictionary.size(); i++) {
            String key = dictionary.getDictionaryArray().get(i).getWord_target().toLowerCase();
            if (key.equals(find)) {
                dictionary.getDictionaryArray().remove(i);
                return true;
            }
        }
        return false;
    }

    public void dictionaryExportToFile() {
        try (FileOutputStream outputStream = new FileOutputStream("src/main/resources/dictionary.txt");
             OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream)) {
            for (int i = 0; i < dictionary.size(); i++) {
                String target = dictionary.getDictionaryArray().get(i).getWord_target();
                String explain = dictionary.getDictionaryArray().get(i).getWord_explain();
                String fullKey = target + "\t" + explain + "\n";
                outputStreamWriter.write(fullKey);
            }
            outputStreamWriter.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String> dictionarySearcher(String find) {
        find = find.toLowerCase();
        ArrayList<Word> dictionaryArray = dictionary.getDictionaryArray();
        ArrayList<String> result = new ArrayList<>();

        for (Word word : dictionaryArray) {
            String target = word.getWord_target().trim().toLowerCase();
            if (target.contains(find)) {
                result.add(word.getWord_explain());
            }
        }

        return result;
    }
}
