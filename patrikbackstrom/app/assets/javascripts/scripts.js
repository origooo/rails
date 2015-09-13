var window_height = 0;
var aboutMeJumboScrollStart = 0;
var aboutMeJumboScrollStop = 0;

var jumboScrollSpeed = 3;

$(document).ready(function() {
	window_height = $(window).height();
	// aboutMeJumboScrollStart = $("#jumbotron-about-me").offset().top - (window_height/2);
	// aboutMeJumboScrollStop = $("#jumbotron-about-me").offset().top + (window_height/jumboScrollSpeed);

	$("#jumbotron").height(window_height/2);
	// $("#jumbotron-about-me").height(window_height/2);
});

$(document).scroll(function() {
	var scroll = $(window).scrollTop();

	// Changes navbar from relative to fixed
	// TODO: Fix the "jumping to left" glitch
	// if (scroll >= window_height/2) {
	// 	$(".scroll-stop").addClass("navbar-fixed-top");
	// 	$("#jumbotron").css({"margin-bottom": $("#menu-row").height()+"px"});
	// } else {
	// 	$(".scroll-stop").removeClass("navbar-fixed-top");
	// 	$("#jumbotron").css({"margin-bottom": "0px"});
	// }


	// Scroll overlap jumbotrons in purple section dividers
	$("#jumbotron-overlap").css({top: (scroll/jumboScrollSpeed)+"px"});
	// if (scroll >= aboutMeJumboScrollStart && scroll <= aboutMeJumboScrollStop) {
	// 	$("#jumbotron-about-me-overlap").css({top: ((scroll-aboutMeJumboScrollStart)/jumboScrollSpeed)+"px"});		
	// }
});