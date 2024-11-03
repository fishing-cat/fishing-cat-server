import * as bootstrap from "bootstrap";
import hljs from "./highlight.js/highlight.min.js";
import hljsErb from "./highlight.js/languages/erb.min.js";
hljs.registerLanguage("erb", hljsErb);
document.addEventListener("turbo:load", () => {
  hljs.highlightAll();
});
