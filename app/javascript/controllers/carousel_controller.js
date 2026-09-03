import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  
  static targets = [ "track", "dot" ]
  static values = { index: Number, interval: Number }

  connect() {
    const timerInterval = this.intervalValue || 3000
    
    this.timer = setInterval(() => {
      this.next()
    }, timerInterval)

    this.moveTrack()
    this.updateDots()
  }

  disconnect() {
    clearInterval(this.timer)
  }

  next() {

    const totalSlides = this.trackTarget.children.length
    this.indexValue = (this.indexValue + 1) % totalSlides
  }

  indexValueChanged() {
    this.moveTrack()
    this.updateDots()
  }

  moveTrack() {
  
    const offset = this.indexValue * 100
    this.trackTarget.style.transform = `translateX(-${offset}%)`
  }

   updateDots() {
    this.dotTargets.forEach((dot, index) => {
      dot.classList.toggle("active", index === this.indexValue)
    })
  }
}
