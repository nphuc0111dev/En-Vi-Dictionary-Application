package base;

import trietree.Trie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class DictionaryCommandline {
    private final DictionaryManagement dictionaryCommandLine =
            new DictionaryManagement();

    public DictionaryManagement getDictionaryCommandLine() {
        return dictionaryCommandLine;
    }

    public void showAllWords() {
        ArrayList<Word> arrayList =
                dictionaryCommandLine.getDictionaryManagement().getDictionaryArray();
        System.out.println("No      | English               | Vietnamese");

        for (int i = 0; i < arrayList.size(); i++) {
            System.out.print(i + 1);
            int cnt = Math.max(0, (int) Math.log10(i));
            for (int j = 1; j < 8 - cnt; j++) {
                System.out.print(" ");
            }
            System.out.print("| ");

            String target = arrayList.get(i).getWord_target();
            String explain = arrayList.get(i).getWord_explain();
            System.out.print(target);
            for (int j = 1; j <= 22 - target.length(); j++) {
                System.out.print(" ");
            }
            System.out.println("| " + explain);
        }
    }

    public ArrayList<String> dictionarySearcher(String find) {
        find = find.toUpperCase();
        ArrayList<Word> arrayList = dictionaryCommandLine.getDictionaryManagement().getDictionaryArray();
        Trie findTrie = new Trie();

        for (Word word : arrayList) {
            String key = word.getWord_target().toLowerCase();
            findTrie.add(key);
        }

        return findTrie.findAllWord(find);
    }

    public void dictionaryAdvanced() throws IOException {
        System.out.print("Welcome to English Vietnamese Dictionary!\n" +
                "1. Translate\n"
                + "2. Add\n"
                + "3. Remove\n"
                + "4. Export\n"
                + "5. Show\n"
                + "6. Search\n"
                + "7. Exit\n"
                + "Your action: ");

        dictionaryCommandLine.insertFromFile();
        Scanner sc = new Scanner(System.in);
        while (true) {
            String cmd = sc.nextLine();

            if (cmd.equals("Translate") || cmd.equals("1")) {
                System.out.print("Type word to translate: ");
                String find = sc.nextLine().trim();
                String ans = dictionaryCommandLine.dictionaryLookup(find);
                System.out.println(ans);
            }

            else if (cmd.equals("Add") || cmd.equals("2")) {
                System.out.print("Type word amount: ");
                int amount = Integer.parseInt(sc.nextLine());
                for (int i = 0; i < amount; i++) {
                    System.out.print("Type target: ");
                    String target = sc.nextLine();
                    System.out.print("Type explain: ");
                    String explain = sc.nextLine();
                    dictionaryCommandLine.insertFromCommandline(target, explain);
                }

            }
            else if (cmd.equals("Remove") || cmd.equals("3")) {
                System.out.print("Type word to delete: ");
                String find = sc.nextLine();
                boolean check = dictionaryCommandLine.dictionaryDelete(find);
                if (check) {
                    System.out.printf("Delete '%s' success\n", find);
                } else {
                    System.out.println("Could not find that word");
                }
            }

            else if (cmd.equals("Export") || cmd.equals("4")) {
                dictionaryCommandLine.dictionaryExportToFile();
                System.out.println("Export success to file");
            }

            else if (cmd.equals("Show") || cmd.equals("5")) {
                this.showAllWords();
            }

            else if (cmd.equals("Search") || cmd.equals("6")) {
                System.out.print("Type word to Search: ");
                String find = sc.nextLine();
                ArrayList<String> ans = this.dictionarySearcher(find);
                if (ans.size() < 1) {
                    System.out.println("Cant find any words");
                    continue;
                }
                for (String v : ans) System.out.println(v);
            }

            else if (cmd.equals("Exit") || cmd.equals("7")) {
                break;
            }

            else {
                System.out.println("Action not supported!");
            }
        }


    }
}