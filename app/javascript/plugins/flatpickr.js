import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  const dateField = document.querySelector("#start_date");
  if (dateField) {
    const date = flatpickr("#start_date", {
      altInput: true,
      plugins: [new rangePlugin({ input: "#end_date"})]
    });
    date.config.onChange.push(function(e) {
      let startDate = Date.parse(e[0]);
      let endDate = Date.parse(e[1]);
  
      if (startDate && endDate) {
        var millisecondsPerDay = 24 * 60 * 60 * 1000;
        var daysBetween = (endDate - startDate) / millisecondsPerDay;
  
        var displayPrice = document.querySelector('#total-price');
        var dayPrice = displayPrice.dataset.dayPrice;
        var price = `$${daysBetween * parseInt(dayPrice)}`;
        displayPrice.innerText = price;
      }
    });
  }
}



export { initFlatpickr };
