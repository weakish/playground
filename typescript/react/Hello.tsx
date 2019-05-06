import React from "react"
import ReactDOM from "react-dom"

function Hello({ name }) {
  return <button>Hello {name}!</button>
}

const helloWorld = <Hello name="World" />

const rootElement = document.getElementById("root")
ReactDOM.render(helloWorld, rootElement)