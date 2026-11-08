# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"


pin "@popperjs/core", to: "popper.js", preload: true       # Maps directly to vendor/javascript/popper.js
pin "bootstrap", to: "bootstrap.min.js", preload: true    # Maps directly to vendor/javascript/bootstrap.min.js
pin_all_from "app/javascript/controllers", under: "controllers"
