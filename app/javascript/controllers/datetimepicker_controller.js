import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {


  connect() {

    let now = new Date();
    now.setHours(now.getHours() + 1, 0, 0, 0)

    flatpickr(this.element, {
      enableTime: true,
      dateFormat: "d-m-Y H\\Hi",
      time_24hr: true,
      minuteIncrement: 30,
      defaultDate: now, // Default to current time
    });
  }
}
