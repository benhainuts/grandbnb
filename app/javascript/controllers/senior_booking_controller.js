
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
      console.log("senior booking controller connecté")
      const request_button = document.getElementById('request_booking');
      request_button.addEventListener("click",  (event) => {
        event.preventDefault();
        console.log("ca a cliqué");
        const request_form = document.getElementById('request_form');
        request_form.classList.remove('d-none');
        request_button.classList.add('d-none');
      });
    };
}
