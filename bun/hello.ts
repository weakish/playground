import { unified } from 'unified'
import remarkObsidian from 'remark-obsidian';
import remarkParse from 'remark-parse';
import remarkRehype from 'remark-rehype';
import rehypeStringify from 'rehype-stringify';

const { value } = unified()
    .use(remarkParse)
    .use(remarkObsidian, { baseUrl: '/docs' })
    .use(remarkRehype, { allowDangerousHtml: true })
    .use(rehypeStringify, { allowDangerousHtml: true })
    .processSync('[[Hello world]]');

console.log(value); // <a href="/docs/hello-world">Hello world</a>