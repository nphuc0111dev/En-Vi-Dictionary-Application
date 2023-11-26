package main;

import java.util.ArrayList;

public class Dictionary {
    public static ArrayList<Word> myDictionary = new ArrayList<>();

    public static void addWord(Word word) {
        myDictionary.add(word);
    }

    public static void removeWord(String word) {
        myDictionary.removeIf(w -> w.getWord_target().equals(word));
    }

    public static Word searchWord(String word) {
        for (Word w : myDictionary) {
            if (w.getWord_target().equals(word))
                return w;
        }
        return null;
    }

    public static void updateWord(String word, String newExplain) {
        for (Word w : myDictionary) {
            if (w.getWord_target().equals(word)) {
                w.setWord_explain(newExplain);
                break;
            }
        }
    }

    public ArrayList<Word> getDictionary() {
        return myDictionary;
    }

    public static int dictionarySize() {
        return myDictionary.size();
    }

}
