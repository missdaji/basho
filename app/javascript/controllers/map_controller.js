import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/jonna634/clp94ir87000q01re69d2h1xc"
    })
    this.#addMarkersToMap()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      new mapboxgl.Marker(customMarker)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(this.map)
    })
  }
}
