package main;

import java.util.Objects;

public class Word {
    private String word_target; // từ vựng tiếng Anh
    private String word_explain; // giải nghĩa tiếng Việt

    // Hàm khởi tạo không tham số
    public Word() {
    }

    // Hàm khởi tạo có tham số
    public Word(String word_target, String word_explain) {
        this.word_target = word_target;
        this.word_explain = word_explain;
    }

    // Các phương thức getter và setter
    public String getWord_target() {
        return word_target;
    }

    public void setWord_target(String word_target) {
        this.word_target = word_target;
    }

    public String getWord_explain() {
        return word_explain;
    }

    public void setWord_explain(String word_explain) {
        this.word_explain = word_explain;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Word word)) return false;
        return Objects.equals(word_target, word.word_target);
    }

    @Override
    public int hashCode() {
        return Objects.hash(word_target, word_explain);
    }

    @Override
    public String toString() {
        return "Word{" + "wordTarget='" + word_target + '\'' + ", wordExplain='" + word_explain + '\'' + '}';
    }
}

