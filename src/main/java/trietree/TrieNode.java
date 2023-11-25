package trietree;

public class TrieNode {
    private static final int ALPHABET_SIZE = 26;
    private TrieNode[] children;
    private boolean endOfWord;
    private String dataOfWord;

    public TrieNode() {
        this.children = new TrieNode[ALPHABET_SIZE];
        reset();
    }

    public TrieNode[] getChildren() {
        return children;
    }

    public boolean isEndOfWord() {
        return endOfWord;
    }

    public void setEndOfWord(boolean endOfWord) {
        this.endOfWord = endOfWord;
    }

    public String getDataOfWord() {
        return dataOfWord;
    }

    public void setDataOfWord(String dataOfWord) {
        this.dataOfWord = dataOfWord;
    }

    public void reset() {
        for (int i = 0; i < ALPHABET_SIZE; i++) {
            children[i] = null;
        }
        endOfWord = false;
        dataOfWord = "";
    }
}
