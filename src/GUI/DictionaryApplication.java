package GUI;

import javax.swing.*;

public class DictionaryApplication extends JFrame {

    public DictionaryApplication() {
        setTitle("En Vi Dictionary Application");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setSize(1200, 600);
        setLocationRelativeTo(null);
        setVisible(true);
    }

    public static void main(String[] args) {
        new DictionaryApplication();
    }

    private void createUIComponents() {
        // TODO: place custom component creation code here
    }
}
