# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
	_sliderHeight = $(window).height() - $('header').height()
	$('#mainslider').height(_sliderHeight)
	
	$(window).on 'resize' ->
		_sliderHeight = $(window).height() - $('header').height()
		$('#mainslider').height(_sliderHeight)
	
	
	_slidesCount = _slides.length
	_pause = 7000
	_container = $('#mainslider')
	_speed = 500
	
	_container.attr('data-slide','0').append('<div class="back" />').append('<div class="pager" />')
	$('div.back',_container).css({'background-image' : 'url('+_slides[0]+')'})
	
	for(i = 0; i < _slidesCount; i++){
		if(i == 0){
			
			$('div.pager',_container).append('<a href="'+i+'" class="active"></a>')
		}
		else{
			$('div.pager',_container).append('<a href="'+i+'"></a>')
		}
	}
	
	slide ->
		_nextSlide = parseInt(_container.attr('data-slide')) + 1
		if(_nextSlide >= _slidesCount){
			_nextSlide = 0;	
		}
		_container.attr('data-slide',_nextSlide)
		_image = _slides[_nextSlide]
		
	$('div.back',_container).animate({'opacity' : '0'},_speed, ->
		$('div.back',_container).css({'background-image' : 'url('+_image+')'}).animate({'opacity' : '1.0'}, _speed)
			
		
		
	$('div.pager a').removeClass('active')
	$('div.pager a[href="'+_nextSlide+'"]').addClass('active')
	
	
	$('div.pager a').live 'click', (e)->
		e.preventDefault();
		_slide = parseInt($(this).attr('href'));
		
		_container.attr('data-slide',_slide);
		_image = _slides[_slide];
		
	$('div.back',_container).animate({'opacity' : '0'},_speed, ->
		$('div.back',_container).css({'background-image' : 'url('+_image+')'}).animate({'opacity' : '1.0'}, _speed)
		
		
$('div.pager a').removeClass('active')
$(this).addClass('active')
		
	
	
setInterval(slide, _pause)