<!DOCTYPE HTML>
<html>
<head>  
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "Device Details"
	},
	axisX: {
		title:"Device Region"
	},
	axisY: {
		title:"Devices"
	},
	legend:{
		horizontalAlign: "left"
	},
	data: [{
		type: "bubble",
		showInLegend: true,
		legendText: "Device Details",
		legendMarkerType: "circle",
		legendMarkerColor: "grey",
		toolTipContent: "<b>{name}</b><br/>{x} yrs<br/> Device Region {y}<br/> Devices {z}mn",
		dataPoints: [
			//{ x: 68.3, y: 2.4, z: 1309.05 , name: "India"},
			//{ x: 76, y: 1.57, z:1371.22, name: "China"},
			{ x: 78.7, y: 1.84, z:320.896, name: "d1" },
			{ x: 69.1, y: 2.44, z: 258.162, name: "d2" },
			{ x: 74.7, y: 1.78, z: 225.962, name: "d3" },
			{ x: 76.9, y: 2.21, z: 125.890, name: "d4" },
			{ x: 53, y: 5.59, z: 181.181, name: "d5" },
			{ x: 70.9, y: 1.75, z: 144.096, name: "d6" },
			{ x: 83.8, y: 1.46, z:127.141, name: "d7" },
			{ x: 82.5, y: 1.83, z:23.789, name: "d8" },
			{ x: 71.3, y: 3.31, z: 93.778, name: "d9" },
			{ x: 81.6, y: 1.81, z:65.128, name: "d10" },
			{ x: 62.1, y: 4.26, z: 47.236, name: "d11" },
			{ x: 69.6, y: 4.51, z: 36.115, name: "d12" },
			{ x: 60.7, y: 4.65, z: 33.736, name: "d13" },
			{ x: 52.7, y: 6, z: 27.859, name: "d14" }
			
		]
	}]
});
chart.render();

}
</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
