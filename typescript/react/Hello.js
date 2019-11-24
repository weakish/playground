import React from "react";
import ReactDOM from "react-dom";
function Hello({ name }) {
    return React.createElement("button", null,
        "Hello ",
        name,
        "!");
}
const helloWorld = React.createElement(Hello, { name: "World" });
const rootElement = document.getElementById("root");
ReactDOM.render(helloWorld, rootElement);
