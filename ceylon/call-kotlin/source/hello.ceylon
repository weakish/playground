import java.lang { JString=String
import java.io { IOException }
import java.util { JList=List }

"The classic [Hello World program][helloworld]
 that prints a message to the console, this
 time written in [Ceylon][].

 This simple program demonstrates:

 1. how to define a toplevel function, and
 2. how to `print()` a literal `String`.

 You can compile and run `hello()` from the
 command line like this:

     ceylon compile source/hello.ceylon
     ceylon run -run hello default

 Or you can use `Run As > Ceylon Application`
 in the IDE.

 [helloworld]: http://en.wikipedia.org/wiki/Hello_world_program
 [Ceylon]: http://ceylon-lang.org"
shared void helloWorld() {
    print("Hello, 世界!");
    print("Hello,
           World!");
    print("
           How
           do
           you
           do?");
    print("    Spaces
           at the first line.");
    print("I think,
           \{THEREFORE} I am.");
    print("Hmm,
           this
           is
           sick.");
    print("
           Multiple
           lines
           of
           text");
    print("Hello, this is Ceylon ``language.version``
           running on ``runtime.name`` ``runtime.version``!\n
           You ran me at ``system.milliseconds`` ms,
           with ``process.arguments.size`` arguments.");
    hello();
    Float sqr(Float x);
    sqr(Float x) => x * x;
    print(sqr(0.01));
}

void hello(String name = "World") => print("Hello, ``name``!");

void helloEveryone(String+ names) {
    for (name in names) {
        hello(name);
    }
}

shared void basic() {
    helloEveryone("world", "mars", "saturn");

    // error: duplicate declaration name
    // void helloEach(String+ name));
    void helloEach(String+ names) {
        for (name in names) {
            hello(name);
        }
    }
    value everyone = ["world", "mars", "saturn"];
    helloEach(*everyone);
}

class Polar(shared Float angle, shared Float radius) {
}


shared void classes() {
    Polar p = Polar(0.6, 3.2);
    print(p.angle);
}

Integer() counter() {
    variable Integer count = 0;
    Integer inc() {
        count++;
        return count;
    }
    return inc;
}

shared void attributes() {
    Integer() inc = counter();
    print(inc());
}

shared void controlStructure() {
    /*
    error: expression must be of optional type: 'Null' is not optional
        String? s = 1 == 1 then null else "b";
                    ^
    error: operand expression may not be an optional type:
    'null' is not assignable to 'Object'
        String? s = 1 == 1 then null else "b";
                                ^
    */
    // String? s = 1 == 1 then null else "b";
    String? s = if (1 == 1) then null else "b";
    print(s);
    String? n = null;
    print(n);

    Integer length = 2;
    assert (length < 10);

    Integer? len = 3;
    // Error: `exists` condition is not a boolean expression.
    // value existence = exists len;
    Boolean existence = len exists;
    print(existence);
}

shared void run() {
    print(`String`);
    Boolean me;
    /* Error: may not be assigned here
    if (me = true) {
      print("true");
    }
    */
    me = true;
    print(me);
}

"via http://www.yinwang.org/blog-cn/2016/04/07/cfa"
[Anything, Anything] foo(Anything(Anything) f) {
    return [f(1), f(true)];
}

shared void checkType() {
    value a = foo(identity);
    print(a);
}

