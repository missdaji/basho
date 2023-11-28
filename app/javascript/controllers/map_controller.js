import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  static targets = ["mapbox", "plus"]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue


    this.map = new mapboxgl.Map({
      container: this.mapboxTarget,
      style: "mapbox://styles/jonna634/clp94ir87000q01re69d2h1xc",
      center: [139.77, 35.68],
      zoom: 10
    });

    this.map.addControl(
      new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true
      })
    )
    this.#addMarkersToMap()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      const popup = new mapboxgl.Popup().setHTML(marker.info_html)
      new mapboxgl.Marker(customMarker)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(this.map)

      popup.on('open', (e) => {
        console.log(e)
        this.plusTarget.classList.add("d-none")
      })

      popup.on('close', (e) => {
        console.log(e)
        this.plusTarget.classList.remove("d-none")
      })
    })
  }
}
