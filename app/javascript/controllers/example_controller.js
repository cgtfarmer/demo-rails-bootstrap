import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["output"];

  connect() {
    console.log("Testing 123");
  }

  meow() {
    this.outputTarget.textContent = "Meow!";
  }
}
