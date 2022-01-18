import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["frame", "container"]

  close(event) {
    event.preventDefault()
    this.frameTarget.src = ""
    this.containerTarget.remove()
  }
}