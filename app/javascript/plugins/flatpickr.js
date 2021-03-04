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



    // if (startDate && endDate) {
    //   // new Date("dateString") is browser-dependent and discouraged, so we'll write
    //   // a simple parse function for U.S. date format (which does no error checking)
    //   function parseDate(str) {
    //       var mdy = str.split('/');
    //       return new Date(mdy[2], mdy[0]-1, mdy[1]);
    //   }

    //   function datediff(first, second) {
    //       // Take the difference between the dates and divide by milliseconds per day.
    //       // Round to nearest whole number to deal with DST.
    //       return Math.round((second-first)/(1000*60*60*24));
    //   }

    //   alert(datediff(parseDate(startDate), parseDate(endDate)));
    // }
  });
}



export { initFlatpickr };
