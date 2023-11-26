package commandline;


import main.Dictionary;
import main.DictionaryManagement;
import main.Word;

import java.util.ArrayList;
import java.util.Scanner;

public class DictionaryCommandline {

    public void dictionaryAdvanced() {
        Scanner scanner = new Scanner(System.in);
        int choice = 0;

        do {
            showMenu();
            System.out.print("Your action: ");

            try {
                choice = scanner.nextInt();
                scanner.nextLine(); // Đọc dòng mới sau khi đọc số
            } catch (Exception e) {
                System.out.println("Action not supported");
                scanner.nextLine(); // Đọc dòng mới để tránh lặp vô hạn
                continue;
            }

            switch (choice) {
                case 0:
                    System.out.println("Exiting the application. Goodbye!");
                    break;
                case 1:
                    // Thêm từ
                    System.out.println("Word you want to add: ");
                    String word = scanner.nextLine();
                    System.out.println("Explain of word you just have add: ");
                    String explain = scanner.nextLine();
                    DictionaryManagement.addWord(new Word(word, explain));
                    break;
                case 2:
                    // Xóa từ
                    System.out.println("Word you want to delete: ");
                    String deleteWord = scanner.nextLine();
                    int index = DictionaryManagement.searchWord(deleteWord);
                    if (index >= 0) {
                        DictionaryManagement.deleteWord(index);
                    } else
                        System.out.println("Nothing to deleted");
                    break;
                case 3:
                    // Sửa từ
                    System.out.println("Word you want to update: ");
                    String updateWord = scanner.nextLine();
                    System.out.println("Explain of word you just have add: ");
                    String newUpdate = scanner.nextLine();
                    int indexUpdate = DictionaryManagement.searchWord(updateWord);
                    if (indexUpdate >= 0)
                        DictionaryManagement.updateWord(indexUpdate, newUpdate);
                    else
                        System.out.println("Word not found");
                    break;
                case 4:
                    showAllWords();
                    break;
                case 5:
                    // Tra cứu từ
                    System.out.println("Word you want to lookup: ");
                    String lookupWord = scanner.nextLine();
                    Word word1 = DictionaryManagement.dictionaryLookup(lookupWord);
                    if (word1 == null) {
                        System.out.println("Word not found!");
                    } else {
                        System.out.println(word1.toString());
                    }
                    break;
                case 6:
                    // Tìm kiếm từ
                    System.out.println("Word you want to search: ");
                    String searchWord = scanner.nextLine();
                    dictionarySearcher(searchWord);
                    break;
                case 7:
                    // Truy cập phần Game (Chưa cài đặt)
                    System.out.println("Game feature not implemented yet.");
                    break;
                case 8:
                    // Nhập danh sách từ từ tệp
                    DictionaryManagement.insertFromFile();
                    break;
                case 9:
                    // Xuất dữ liệu danh sách từ ra tệp
                    DictionaryManagement.exportToFile();
                    break;
                default:
                    System.out.println("Action not supported");
            }
        } while (choice != 0);
    }

    public static void showAllWords() {
        System.out.printf("%-6s%c %-20s%c %-20s%n","No", '|' ,"English", '|', "Vietnamese");
        for (int i = 0; i < Dictionary.dictionarySize(); i++) {
            System.out.printf("%-6d%c %-20s%c %-20s%n", i + 1,'|', Dictionary.myDictionary.get(i).getWord_target(), '|',
                    Dictionary.myDictionary.get(i).getWord_explain());
        }
    }

    public static void dictionaryBasic() {
        DictionaryManagement.insertFromCommandline();
        showAllWords();
    }

    public static ArrayList<Word> dictionarySearcher(String prefix) {
        ArrayList<Word> newList = new ArrayList<>();
        prefix = prefix.toLowerCase();
        boolean found = false;

        for (Word word : Dictionary.myDictionary) {
            String englishWord = word.getWord_target().toLowerCase();

            if (englishWord.startsWith(prefix)) {
                newList.add(word);
                found = true;
            }
        }

        if (!found) {
            System.out.println("Không có từ vựng nào bắt đầu bằng \"" + prefix + "\" trong từ điển.");
        }
        return newList;
    }

    public void showMenu() {
        System.out.println("Welcome to My Application!");
        System.out.println("[0] Exit");
        System.out.println("[1] Add");
        System.out.println("[2] Remove");
        System.out.println("[3] Update");
        System.out.println("[4] Display");
        System.out.println("[5] Lookup");
        System.out.println("[6] Search");
        System.out.println("[7] Game");
        System.out.println("[8] Import from file");
        System.out.println("[9] Export to file");
    }
}
