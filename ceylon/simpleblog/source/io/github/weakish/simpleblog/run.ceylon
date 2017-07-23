import ceylon.http.server {
    newServer,
    Endpoint,
    startsWith,
    Server
}
import ceylon.html {
    renderTemplate,
    Html,
    Body,
    H1,
    Head,
    Title,
    H2,
    P,
    Hr,
    Br
}
import ceylon.time {
    today
}

Html page = Html {
    Head {
        Title { "Things To Forget" }
    },
    Body {
        H1 { "Things To Forget" },
        H2 { "Tags" },
        H2 { "About" },
        P { """The name "Things To Forget" comes from the Chinese word 備忘 (Wade: pei⁴wang⁴).
               The Chinese word 備忘 (means memo) consists of two Chinese characters:
               備 (prepare) and 忘 (forget), i.e. prepare for forgetting.
               Instead, "things to forget" is a wrong interpreation, prepare to forget.
               This somehow makes sense to me.
               I note things down so I do not need to remember them.""" },
        Hr(),
        P {
                "Last modified on ``today()``", Br(),
                "Permission to use, copy, modify, and/or distribute this note for any purpose with or without fee is hereby granted."
        }
    }
};

Server server => newServer {
        Endpoint {
            path = startsWith("/");
            service = (req, res) {
                renderTemplate(page, res.writeString);
            };
        }
};

void compile_page() {
    print(page);
}

shared void run(){
    if (process.namedArgumentPresent("server")) {
        server.start();
    } else {
        compile_page();
    }
}
