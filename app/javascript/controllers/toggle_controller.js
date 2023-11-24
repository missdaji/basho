import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["map", "list", "mapBtn", "listBtn"]
  connect() {
    console.log("Connected to toggle")
    console.log(this.mapBtnTarget.classList)
    console.log(this.listBtnTarget.classList)
  }
  toggleMap() {
    this.element.classList.toggle("show-list")
  }
}
