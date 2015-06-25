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

// var jumboHeight = $('.jumbotron').outerHeight();
// function parallax(){
//     var scrolled = $(window).scrollTop();
//     $('.bg').css('height', (jumboHeight-scrolled) + 'px');
// }

// $(window).scroll(function(e){
//     parallax();
// });

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