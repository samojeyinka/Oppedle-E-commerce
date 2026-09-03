import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="products"
export default class extends Controller {
    static targets = ["cartForm"]
    static values = {size: String, product: Object}

    addToCart() {
      console.log("product: ", this.productValue)
      console.log("size: ", this.sizeValue)
    }
  

    selectSize(e) {
      this.sizeValue = e.target.value;
      const selectedSizeElmt = document.getElementById('selectedSize');
      const youSelected = document.getElementById('indicator');
      youSelected.innerText = 'You picked';
      selectedSizeElmt.style.padding = '.3rem';
      selectedSizeElmt.innerText = `${this.sizeValue}`;

      if (this.hasCartFormTarget) {
        const form = this.cartFormTarget;
        const sizeInput = form.querySelector('input[name="size"]');
        if (sizeInput) {
          sizeInput.value = this.sizeValue;
        }
      }
    }
}
