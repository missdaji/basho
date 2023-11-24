import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-form"
export default class extends Controller {
  connect() {
    console.log("Connected to toggle-form controller")
  }
  showAddress() {
    console.log("Show address")
    const field = document.getElementById("showAddress")
    if ( field.style.display === "none") {
       field.style.display = "block"
    }
    else {
      field.style.display = "none"
    }
  }
}
