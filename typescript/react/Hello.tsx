import React, {ReactElement } from "react"
import ReactDOM from "react-dom"
type HelloProps = { readonly name: string }
function Hello({ name }: HelloProps): ReactElement<HelloProps> {
  return <button>Hello {name}!</button>
}

const helloWorld: ReactElement<HelloProps> = <Hello name="World" />

const rootElement: HTMLElement = document.getElementById("root")
ReactDOM.render(helloWorld, rootElement)