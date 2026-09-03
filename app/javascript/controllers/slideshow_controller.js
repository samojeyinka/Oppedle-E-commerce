import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slideshow"
export default class extends Controller {
  static targets = ["slide"]
  static values = { index: Number, interval: Number }
  connect() {
    const timeInterval = this.intervalValue || 3000

    this.timer = setInterval(() => {
      this.next()
    }, timeInterval)

    this.showCurrentSlide()
  }

  disconnect() {
    clearInterval(this.timer)
  }

  next() {
    this.indexValue = (this.indexValue + 1) % this.slideTargets.length
  }

  indexValueChanged(){
    this.showCurrentSlide()
  }

  showCurrentSlide(){
    this.slideTargets.forEach((element, index) => {
      element.hidden = index != this.indexValue
    })
  }
}
