import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "filtersCard" ]
  // connect() {
  //   this.element.textContent = "Hello from filters!"
  // }

  showFilters() {
    this.filtersCardTarget.classList.toggle("d-none");
  }
}
