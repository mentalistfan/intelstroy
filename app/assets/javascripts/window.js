// JavaScript Document
$(document).ready(function(){
	var _window = $(window).height();
	
	if(_window > 800){
		var _q = ((_window - 580)/2) - 60;
		
		$('.center').css({'margin-top' : _q});
	}
	
	$(window).load(function(){
		
		$('footer').removeClass('position');
		
		var _footer = $('footer').offset().top + $('footer').height();
		var _doc = $(window).height()
		
		if(_footer < _doc){
			$('footer').addClass('position');	
		}
	});
	
	$(window).resize(function(){
		var _window = $(window).height();
	
		if(_window > 800){
			var _q = ((_window - 580)/2) - 60;
			$('.center').css({'margin-top' : _q});
		}
		
		$('footer').removeClass('position');
		
		var _footer = $('footer').offset().top + $('footer').height();
		var _doc = $(window).height()
		
		if(_footer < _doc){
			$('footer').addClass('position');	
		}
	});
	
	
	
});