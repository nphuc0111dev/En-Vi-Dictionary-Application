package trietree;

import java.util.ArrayList;
import java.util.Arrays;

public class Trie {
    private static final int alphabetSize = 26;
    public static TrieNode root = new TrieNode();

    public void add(String key) {
        key = key.toLowerCase();
        TrieNode trieNode = root;
        for (int i = 0; i < key.length(); i++) {
            char ch = key.charAt(i);
            int index = charToIndex(ch);
            if (trieNode.getChildren()[index] == null) {
                trieNode.getChildren()[index] = new TrieNode();
            }
            trieNode = trieNode.getChildren()[index];
        }
        trieNode.setEndOfWord(true);
        trieNode.setDataOfWord(key);
    }

    public TrieNode search(String key) {
        key = key.toLowerCase();
        TrieNode trieNode = root;
        for (int i = 0; i < key.length(); i++) {
            char ch = key.charAt(i);
            int index = charToIndex(ch);
            if (trieNode.getChildren()[index] == null) {
                return null;
            }
            trieNode = trieNode.getChildren()[index];
        }
        return trieNode;
    }

    public String find(TrieNode keyNode) {
        if (keyNode == null) {
            return "";
        }
        String result = (keyNode.isEndOfWord() ? keyNode.getDataOfWord() + "\n" : "");
        for (int i = 0; i < alphabetSize; i++) {
            if (keyNode.getChildren()[i] != null) {
                result = result.concat(find(keyNode.getChildren()[i]));
            }
        }
        return result;
    }

    public ArrayList<String> findAllWord(String key) {
        key = key.toLowerCase();
        TrieNode trieNode = this.search(key);
        String[] resultArray = this.find(trieNode).split("\n");
        return new ArrayList<>(Arrays.asList(resultArray));
    }

    static boolean isEmpty(TrieNode trieNode) {
        for (int i = 0; i < alphabetSize; i++) {
            if (trieNode.getChildren()[i] != null) {
                return false;
            }
        }
        return true;
    }

    public void delete(String key) {
        key = key.toLowerCase();
        backtrackDelete(root, key, 0);
    }

    public TrieNode backtrackDelete(TrieNode trieNode, String key, int depth) {
        key = key.toLowerCase();
        if (trieNode == null) {
            return null;
        }
        if (depth == key.length()) {
            if (trieNode.isEndOfWord()) {
                trieNode.setEndOfWord(false);
            }
            if (isEmpty(trieNode)) {
                trieNode = null;
            }
            return trieNode;
        }

        char ch = key.charAt(depth);
        int index = charToIndex(ch);

        trieNode.getChildren()[index] = backtrackDelete(trieNode.getChildren()[index], key, depth + 1);
        if (isEmpty(trieNode) && !trieNode.isEndOfWord()) {
            trieNode = null;
        }
        return trieNode;
    }

    private int charToIndex(char ch) {
        if (ch >= 'a' && ch <= 'z') {
            return ch - 'a';
        } else if (ch >= 'A' && ch <= 'Z') {
            return ch - 'A';
        } else if (ch >= '0' && ch <= '9') {
            return ch - '0';
        }
        return -1;  // Handle other characters or throw an exception
    }
}
