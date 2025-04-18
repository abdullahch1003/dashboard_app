import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="metric"
export default class extends Controller {
  updateGraph(event) {
   event.target.form.requestSubmit();
  }
}
