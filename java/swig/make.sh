#!/bin/sh

swig -java example.i
cc -fpic -c example.c example_wrap.c -I"$JAVA_HOME/include/linux" -I"$JAVA_HOME/include"
cc -shared example.o example_wrap.o -o libexample.so
javac HelloSwig.java
java -Djava.library.path='.' HelloSwig
