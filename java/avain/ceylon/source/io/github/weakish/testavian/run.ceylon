import ceylon.collection {
    ArrayList,
    HashSet
}
import ceylon.buffer.base {
    base64StringUrl
}
import ceylon.file {
    current,
    parsePath,
    Nil
}
import ceylon.json {
    parse, JsonObject=Object
}
import ceylon.net.uri {
    Uri,
    parseUri=parse
}
import ceylon.random {
    DefaultRandom
}
import ceylon.regex {
    regex
}
import ceylon.time {
    Instant
}
import ceylon.io {
    SocketAddress,
    newSocketConnector
}
import ceylon.unicode {
    uppercase
}

"Run the module `io.github.weakish.testavian`."
shared void run(){
    // ObjectArray<String> commands = ObjectArray<String>(1, "touch");
    // Runtime.runtime.exec(commands);
    // ArrayList<Integer> al = ArrayList<Integer>();
    // HashSet<String> hs = HashSet<String>();
    // value base64 = base64StringUrl.encodeBuffer({3, 2, 1}*.byte);
    Integer i = 1334;
    Float pi = 3.14;
    print(i);
    print(pi);
    /*
    if (process.namedArgumentPresent("help")) {
        print("help");
    }
    */
    process.writeErrorLine("stderr");
    String? s = "hi";
    print(s else "none");
    process.exit(0);
    Array<Integer> arrayInteger = Array<Integer>({1, 2, 3});
    /*
    value filePath = current.childPath("hello.txt");
    if (is Nil loc = filePath.resource) {
        value file = loc.createFile();
        print("Create file.");
    }
    else {
        print("file already exists");
    }
    */
    /*
    value json = JsonObject {
        "name" -> "Introduction to Ceylon",
        "author" -> "Stef Epardaud ..."
    };
    */
    /*
    value uri = parse("http://127.0.0.1");
    value random = DefaultRandom();
    print(random.nextFloat());
    */
    // value re = regex("[0-9]+ years");
    /*
    Instant time = Instant(123345);
    print(time.dateTime().string);
    */
    /*
    value connector = newSocketConnector(SocketAddress("127.0.0.1", 84310));
    value socket = connector.connect();
    */
    /*
    print(uppercase("abc"));
    */
}


