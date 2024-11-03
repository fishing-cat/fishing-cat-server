import * as bootstrap from "bootstrap";
import hljs from "highlight.js/highlight";
import hljsErb from "highlight.js/languages/erb";
hljs.registerLanguage("erb", hljsErb);
document.addEventListener("turbo:load", () => {
  hljs.highlightAll();
});
