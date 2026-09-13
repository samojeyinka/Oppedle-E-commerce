import { Controller } from "@hotwired/stimulus"

// Horizontal list that scrolls via mouse/touch drag AND chevron buttons
// (data-action="horizontal-scroll#scrollLeft" / "#scrollRight").
export default class extends Controller {
  static targets = ["scroller"]

  connect() {
    this.dragging = false
    this.dragStartX = 0
    this.scrollStartLeft = 0
    this.hasMoved = false

    this.scroller.addEventListener("pointerdown", this.onPointerDown)
    this.scroller.addEventListener("pointermove", this.onPointerMove)
    this.scroller.addEventListener("pointerup", this.onPointerUp)
    this.scroller.addEventListener("pointercancel", this.onPointerUp)
    this.scroller.addEventListener("click", this.onClick, true)
  }

  disconnect() {
    this.scroller.removeEventListener("pointerdown", this.onPointerDown)
    this.scroller.removeEventListener("pointermove", this.onPointerMove)
    this.scroller.removeEventListener("pointerup", this.onPointerUp)
    this.scroller.removeEventListener("pointercancel", this.onPointerUp)
    this.scroller.removeEventListener("click", this.onClick, true)
  }

  onPointerDown = (event) => {
    this.dragging = true
    this.hasMoved = false
    this.dragStartX = event.clientX
    this.scrollStartLeft = this.scroller.scrollLeft
  }

  onPointerMove = (event) => {
    if (!this.dragging) return

    const delta = event.clientX - this.dragStartX
    if (Math.abs(delta) > 5) this.hasMoved = true
    this.scroller.scrollLeft = this.scrollStartLeft - delta
  }

  onPointerUp = () => {
    this.dragging = false
  }

  onClick = (event) => {
    if (this.hasMoved) {
      event.preventDefault()
      event.stopImmediatePropagation()
    }
  }

  scrollLeft() {
    this.scrollBy(-this.amount)
  }

  scrollRight() {
    this.scrollBy(this.amount)
  }

  scrollBy(delta) {
    this.scroller.scrollBy({ left: delta, behavior: "smooth" })
  }

  get scroller() {
    return this.scrollerTarget
  }

  get amount() {
    return Math.max(this.scroller.clientWidth * 0.6, 200)
  }
}