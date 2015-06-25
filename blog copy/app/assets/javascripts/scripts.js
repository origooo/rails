$(window).load(
	function get_retailers() {
		console.log("script");
		$.get("/retailers", function(response) {
			console.log("Loading Retailer entries...");
			$("#retailers").append(response);
		}).done(function() {
			console.log("Retailers loaded!");
		}).fail(function() {
			console.log("Could not load Retailer entries!");
		});
	}
);

function add_retailer() {
	$.get("/retailers/new", function(response) {
		console.log("Loading 'Add Retailer'...");
		$("#retailers").append(response);
	}).done(function() {
		console.log("Loaded");
	}).fail(function() {
		console.log("Could not load 'Add Retailer'!");
	});
}

function edit_retailer(id) {
	$.get("/retailers/"+id+"/edit", function(response) {
		console.log("Loading 'Edit Retailer'...");
		$("#retailer-"+id).empty().append(response);
	}).done(function() {
		console.log("Loaded");
	}).fail(function() {
		console.log("Could not load 'Edit Retailer'!");
	});
}