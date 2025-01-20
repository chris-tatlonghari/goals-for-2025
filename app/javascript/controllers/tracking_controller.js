// app/javascript/controllers/tracking_controller.js
import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["updateProgress"]
    
    toggleUpdateProgress() {
        this.updateProgressTarget.classList.toggle("hidden")
    }
}
