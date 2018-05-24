$(document).ready(function () {
	//
	// Debounce
	function debounce(func, wait, immediate) {
		var timeout;
		return function() {
			var context = this, args = arguments;
			var later = function() {
				timeout = null;
				if (!immediate) func.apply(context, args);
			};
			var callNow = immediate && !timeout;
			clearTimeout(timeout);
			timeout = setTimeout(later, wait);
			if (callNow) func.apply(context, args);
		};
	};
	//
	// Events on Window Resize
	var bigSlideAPI = ($('.menu-link').bigSlide({})).bigSlideAPI;
	// on window resize with debounce
	var windowResize = debounce(function() {

		var windowHeight = $(window).height();
		var foldHeight = $('.hero-content').outerHeight() + $('.top').outerHeight() + $('.green-cta').outerHeight();

		var idealHeight = (windowHeight > 1024)
			? foldHeight
			: windowHeight - $('.green-cta').outerHeight();
		// resize fold
		var newHeight = windowHeight > foldHeight
			? idealHeight
			: foldHeight;

		$('.hero').css({
			height: newHeight
		});

		// close mobile-menu
		if (windowWidth > 768) {
			bigSlideAPI.view.toggleClose();
		}
	}, 100);

	window.addEventListener('resize', windowResize);
	windowResize();

	var windowWidth = $(window).width();

	$('.menu-close').click(function() {
		event.preventDefault();
		bigSlideAPI.view.toggleClose();
	});

	$(function () {
    $('.nav').find('a[href*=#]:not([href=#])').click(function () {
        var offset = 0;
        var speed = 1000;
        var target = $(this.hash);

        $("html,body").animate({
            scrollTop: target.offset().top - offset
        }, speed);
    });
	});

});
