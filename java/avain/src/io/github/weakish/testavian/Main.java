package io.github.weakish.testavian;

import java.io.DataInputStream;
import java.io.IOException;

public class Main {

    public static void main(String[] args) {
        DataInputStream dataInputStream = new DataInputStream(System.in);
        int i = 0;
        try {
            i = dataInputStream.readInt();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(i);
    }
}
