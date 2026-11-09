// app/javascript/controllers/carousel_controller.js
import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"

export default class extends Controller {
  connect() {
    // 'this.element' automatically refers to the HTML element that has data-controller="carousel"
    this.carousel = new bootstrap.Carousel(this.element, {
      interval: 2000,
      touch: false
    })
  }

  disconnect() {
    // Clean up the instance when leaving the page to prevent memory leaks
    if (this.carousel) {
      this.carousel.dispose()
    }
  }
}
