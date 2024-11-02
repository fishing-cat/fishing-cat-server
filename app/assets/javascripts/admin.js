//= require popper
//= require bootstrap

import hljs from "highlight.js";
import hljsErb from "highlight.js/erb";
hljs.registerLanguage("erb", hljsErb);
document.addEventListener("turbo:load", () => {
  hljs.highlightAll();
});
