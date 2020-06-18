import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    enableTime: true,
    minDate: new Date()
    // minDate: Date.today
  });
};

export { initFlatpickr };
