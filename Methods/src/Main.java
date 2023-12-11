// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
import java.util.*;
public class Main {
    public static void main(String[] args) {
        loop(10, 20);
        System.out.println("**");
        loop(30, 40);
    }
        public static void loop ( int start, int stop){
            for (; start <= stop; start++){
                System.out.println(start);
        }

    }
}