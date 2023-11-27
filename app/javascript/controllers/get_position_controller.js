import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="get-position"
export default class extends Controller {
  connect() {
    console.log("Connected to getPosition")
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        console.log(position.coords)
        this.element.href += `?lat=${position.coords.latitude}&lon=${position.coords.longitude}`
      });
    }
  }
}
