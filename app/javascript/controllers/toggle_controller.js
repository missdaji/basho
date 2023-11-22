import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["map", "list", "mapBtn", "listBtn"]
  connect() {
    console.log("Connected to toggle")
    console.log(this.mapBtnTarget.classList)
    console.log(this.listBtnTarget.classList)
  }
  showMap() {
    console.log("Show map")
    this.listTarget.classList.add("d-none")
    this.mapTarget.classList.remove("d-none")
    this.mapBtnTarget.classList.add("btn-toggle-active")
    this.listBtnTarget.classList.remove("btn-toggle-active")
    this.listBtnTarget.classList.add("btn-toggle")
  }
  showList() {
    console.log("Show list")
    this.mapTarget.classList.add("d-none")
    this.listTarget.classList.remove("d-none")
    this.listBtnTarget.classList.add("btn-toggle-active")
    this.listBtnTarget.classList.remove("btn-toggle")
    this.mapBtnTarget.classList.remove("btn-toggle-active")
    this.mapBtnTarget.classList.add("btn-toggle")
  }
}
