import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true,
  minDate: new Date()
  // minDate: Date.today
});
