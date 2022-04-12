$(document).ready(function(){
	var ctx = $("#mycanvas").get(0).getContext("2d");

	var data = [
		{
			value: 63,
			color: "cornflowerblue",
			highlight: "lightskyblue",
			label: "Present",
			indexLabel:"Present"
		},
		{
			value: 0,
			color: "lightgreen",
			highlight: "yellowgreen",
			label: "Not Marked",
			indexLabel:"Not Marked"
		},
		{
			value: 37,
			color: "orange",
			highlight: "darkorange",
			label: "Absent",
			indexLabel:"Absent"
		}
	];
	
	var chart = new Chart(ctx).Doughnut(data);
	showAllTooltips:true;
	
});


$(document).ready(function () {
	$('#dtHorizontalExample').DataTable({
	"scrollX": true
	});
	$('.dataTables_length').addClass('bs-select');
	});




