$(document).ready(function() {
 
  donutChart();

  $(window).resize(function() {
   
    window.donutChart.redraw();
  });
});

function barChart() {
  
function donutChart() {
  window.donutChart = Morris.Donut({
  element: 'donut-chart',
  data: [
    {label: "Download Sales", value: 50},
    {label: "In-Store Sales", value: 25},
    {label: "Mail-Order Sales", value: 5},
    {label: "Uploaded Sales", value: 10},
    {label: "Video Sales", value: 10}
  ],
  resize: true,
  redraw: true
});
}

}