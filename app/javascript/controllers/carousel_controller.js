import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  connect() {
    // Import Bootstrap dynamically or globally from your pinned importmaps
    if (typeof bootstrap !== 'undefined') {
      this.initializeCarousel()
    } else {
      // Fallback if bootstrap isn't loaded globally yet
      import("bootstrap").then(() => {
        this.initializeCarousel()
      })
    }
  }

  initializeCarousel() {
    // Automatically hooks into the HTML element holding `data-controller="carousel"`
    this.carousel = new bootstrap.Carousel(this.element, {
      interval: 5000, // 5 seconds per slide
      ride: "carousel" // Starts cycling immediately upon mounting
    })
  }

  disconnect() {
    // Clean up the instance when leaving the page to prevent memory leaks
    if (this.carousel) {
      this.carousel.dispose()
    }
  }
}
