import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log("salut")
const request_button = document.getElementById('request_booking');
request_button.addEventListener("click",  (event) => {
  event.preventDefault();
  console.log("ca a cliqué");
  const request_form = document.getElementById('request_form');
  request_form.classList.remove('d-none');
  request_button.classList.add('d-none');
});
