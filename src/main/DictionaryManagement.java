package main;
import java.io.*;
import java.text.FieldPosition;
import java.util.Scanner;
import datastructure.Trie;

public class DictionaryManagement {
    // Set new trie for dict
    private static Trie trie = new Trie();
    private static final String LITE_DICTIONARIES_FILE_PATH = "resource/dictionaries.txt";
    private static final String DICTIONARIES_FILE_PATH = "resource/dictionaries_ver2.txt";

    public static void insertFromCommandline() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập số lượng từ vựng:");
        int numWords = scanner.nextInt();
        scanner.nextLine(); // consume newline

        for (int i = 0; i < numWords; i++) {
            System.out.println("Nhập từ tiếng Anh:");
            String englishWord = scanner.nextLine();
            System.out.println("Nhập giải thích bằng tiếng Việt:");
            String vietnameseMeaning = scanner.nextLine();

            Word word = new Word(englishWord, vietnameseMeaning);
            Dictionary.addWord(word);
        }
    }

    public static void insertFromFile() {
        try {
            FileReader fileReader = new FileReader(DICTIONARIES_FILE_PATH);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String englishWord = bufferedReader.readLine();
            englishWord = englishWord.replace("|", "");
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                Word word = new Word();
                word.setWord_target(englishWord.trim());
                String meaning = line + "\n";
                while ((line = bufferedReader.readLine()) != null) {
                    if (!line.startsWith("|"))
                        meaning += line + "\n";
                    else {
                        englishWord = line.replace("|", "");
                        break;
                    }
                }
                word.setWord_explain(meaning.trim());
                Dictionary.addWord(word);
            }
        } catch (Exception e) {
            System.out.println("Something wrong, please check again!" + e);
        }
    }

    public static void exportToFile() {
        try {
            FileWriter fileWriter = new FileWriter(LITE_DICTIONARIES_FILE_PATH);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            for (Word word : Dictionary.myDictionary) {
                bufferedWriter.write("|" + word.getWord_target() + "\n" + word.getWord_explain());
                bufferedWriter.newLine();
            }
            bufferedWriter.close();

        } catch (Exception e) {
            System.out.println("Wrong, please check!");
        }
    }

    /**
     * make sure process word first
     * @param lookupWord is word to lookup
     */
    public static Word dictionaryLookup(String lookupWord) {
        for (Word w : Dictionary.myDictionary) {
            if (w.getWord_target().equalsIgnoreCase(lookupWord)) {
                return w;
            }
        }
        return null;
    }

    /**
     * binary search word
     * @param searchWord is the word to search
     * @return index of word, -1 if word not found
     */
    public static int searchWord(String searchWord) {
        try {
            Dictionary.myDictionary.sort(new SortWord());
            int left = 0;
            int right = Dictionary.dictionarySize() - 1;
            while (left <= right) {
                int mid = left + (right - left) / 2;
                int res = Dictionary.myDictionary.get(mid).getWord_target().compareTo(searchWord);
                if (res == 0) return mid;
                if (res <= 0)
                    left = mid + 1;
                else
                    right = mid - 1;
            }
        } catch (NullPointerException e) {
            System.out.println("Null Except.");
        }
        return -1;
    }

    public static void updateWord(int index, String meaning) {
        try {
            Dictionary.myDictionary.get(index).setWord_explain(meaning);
            exportToFile();
            System.out.println("Update successful");
        } catch (NullPointerException e) {
            System.out.println("Null exception");
        }
    }

    public static void addWord(Word word) {
        try (FileWriter fileWriter = new FileWriter(DICTIONARIES_FILE_PATH, true);
             BufferedWriter bufferedWriter = new BufferedWriter(fileWriter)) {
            bufferedWriter.write("|" + word.getWord_target() + "\n" + word.getWord_explain());
            bufferedWriter.newLine();
            System.out.println("Add successful");
        } catch (IOException e) {
            System.out.println("IOException.");
        } catch (NullPointerException e) {
            System.out.println("Null Exception.");
        }
    }

    public static void deleteWord(int index) {
        try {
            Dictionary.myDictionary.remove(index);
            trie = new Trie();
            setTrie();
            exportToFile();
            System.out.println("Remove successful");
        } catch (NullPointerException e) {
            System.out.println("NULL exception");
        }
    }


    /**
     *Set up trie.
     */
    public static void setTrie() {
        try {
            for (Word word : Dictionary.myDictionary) trie.insert(word.getWord_target());
        } catch (NullPointerException e) {
            System.out.println("Something went wrong: " + e);
        }
    }

}
