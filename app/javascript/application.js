// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "@popperjs/core"
// import * as bootstrap from "bootstrap"
import "bootstrap"

import "controllers"

// This forces Bootstrap to re-initialize its components whenever Turbo replaces the page body
document.addEventListener("turbo:load", () => {
  const carouselElList = document.querySelectorAll('[data-bs-ride="carousel"]')
  carouselElList.forEach(carouselEl => {
    // If it isn't initialized yet, force it to boot
    if (!bootstrap.Carousel.getInstance(carouselEl)) {
      new bootstrap.Carousel(carouselEl)
    }
  })
})
