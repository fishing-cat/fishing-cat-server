# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true # via bootstrap.gem
pin "@popperjs/core", to: "popper.js", preload: true # via bootstrap.gem
pin "highlight.js/highlight", to: "highlight.js/highlight.min.js", preload: true
pin "highlight.js/languages/erb", to: "highlight.js/languages/erb.min.js", preload: true
