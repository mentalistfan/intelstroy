# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->

	_window = $(window).height()

	if _window > 800
		_q = ((_window - 580)/2) - 60
		$('.center').css({'margin-top' : _q})
		
	$('.scrollpane').jScrollPane()

	$('footer').removeClass('position')

	_footer = $('footer').offset().top + $('footer').height()

	if _footer < _window
		$('footer').addClass('position');	

	_cont = $('#maincontent').height()
	_half = -(_cont/2)
	$('#maincontent').css({'margin-top' : _half})

	