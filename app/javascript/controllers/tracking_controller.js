// app/javascript/controllers/tracking_controller.js
import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["updateProgress"]
    
    toggleUpdateProgress(e) {
        const index = e.currentTarget.dataset.index
        
        this.updateProgressTargets[index].classList.toggle("hidden")
    }
}
