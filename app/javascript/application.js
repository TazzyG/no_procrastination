// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"


import "bootstrap"

import "controllers"
// import * as bootstrap from "bootstrap" // Notice the explicit wildcard import

// document.addEventListener("turbo:load", () => {
//   const carouselElList = document.querySelectorAll('[data-bs-ride="carousel"]')
//   carouselElList.forEach(carouselEl => {
//     if (!bootstrap.Carousel.getInstance(carouselEl)) {
//       new bootstrap.Carousel(carouselEl)
//     }
//   })
// })