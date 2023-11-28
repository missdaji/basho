import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color"
export default class extends Controller {
  static targets = ["tags", "name"]

  connect() {
    console.log("connected")
  }

  add() {
    console.log(this.tagsTarget)
    const item = `<div class="tag-item"><input class="form-check-input check_boxes optional tag-selector" type="checkbox" value="${this.nameTarget.value}" name="pin[tag_ids][]" id="pin_tag_ids_${this.nameTarget.value}" checked><label class="form-check-label collection_check_boxes" for="pin_tag_ids_${this.nameTarget.value}">${this.nameTarget.value}</label></div>`
    this.tagsTarget.insertAdjacentHTML("beforeend", item)
  }
}
