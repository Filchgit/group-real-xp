import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const dateDifference = () => {

}

const initFlatpickr = () => {
  const date = flatpickr("#start_date", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#end_date"})]
  });
  date.config.onChange.push(function(e) {
    let startDate = Date.parse(e[0]);

    console.log(startDate);
    let endDate = Date.parse(e[1]);


    console.log(endDate);

    if (startDate && endDate) {
      var millisecondsPerDay = 24 * 60 * 60 * 1000;
      var daysBetween = (endDate - startDate) / millisecondsPerDay;
      console.log(daysBetween);


      var displayPrice = document.querySelector('#total-price');
      var dayPrice = displayPrice.dataset.dayPrice;
      console.log(dayPrice);
      var price = `$${daysBetween * parseInt(dayPrice)}`;
      console.log(price);
      displayPrice.innerText = price;
    }



  });
}



export { initFlatpickr };
