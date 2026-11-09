import { Controller } from "@hotwired/stimulus"
// import * as bootstrap from "bootstrap" 
export default class extends Controller {
  connect() {
    // Access window.bootstrap natively
    if (typeof bootstrap !== "undefined" && bootstrap.Carousel) {
      this.carousel = new bootstrap.Carousel(this.element, {
        interval: 5000,
        ride: "carousel"
      })
    } else {
      console.error("Bootstrap script is missing from the global window object.")
    }
  }

  disconnect() {
    if (this.carousel) this.carousel.dispose()
  }
}