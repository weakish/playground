class Hello(String name) {
    shared void say(Integer n) {
        print("Hello, ``name``, for the ``n``th time!");
    }
}

"Run the module `test.fr`."
shared void run(){
    Hello.say(Hello("World"))(3);
}
