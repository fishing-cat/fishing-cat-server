# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "bootstrap" # @5.3.3
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.8
# highlight.js@11.10.0 https://github.com/highlightjs/highlight.js/tree/11.10.0
pin "highlight.js", to: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.10.0/es/highlight.min.js"
pin "highlight.js/erb", to: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.10.0/es/languages/erb.min.js"
