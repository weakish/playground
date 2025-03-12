// import highlighter
import { glow } from 'nue-glow'

const code = 'let a = 1 -- comment'

// render code
const html = glow(code, { language: 'haskell' })

console.info(html)
// <code language="haskell"><strong>let</strong> a <i>=</i> <em>1</em> <i>-</i><i>-</i> comment</code>
