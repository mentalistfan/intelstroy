// JavaScript Document
$(document).on('page:change',function(){

	var _sliderHeight = $(window).height() - $('header').height();
	$('#mainslider').height(_sliderHeight);
	
	$(window).resize(function(){
		var _sliderHeight = $(window).height() - $('header').height();
		$('#mainslider').height(_sliderHeight);
	});
	
	var _slidesCount = _slides.length;
	var _pause = 7000;
	var _container = $('#mainslider');
	var _speed = 500;
	
	_container.attr('data-slide','0').append('<div class="back" />').append('<div class="pager" />');
	$('div.back',_container).css({'background-image' : 'url('+_slides[0]+')'})
	
	for(var i = 0; i < _slidesCount; i++){
		if(i == 0){
			
			$('div.pager',_container).append('<a href="'+i+'" class="active"></a>');	
		}
		else{
			$('div.pager',_container).append('<a href="'+i+'"></a>');	
		}
	}
	function slide(){
		var _nextSlide = parseInt(_container.attr('data-slide')) + 1;
		if(_nextSlide >= _slidesCount){
			_nextSlide = 0;	
		}
		_container.attr('data-slide',_nextSlide);
		var _image = _slides[_nextSlide];
		
		$('div.back',_container).animate({'opacity' : '0'},_speed, function(){
			$('div.back',_container).css({'background-image' : 'url('+_image+')'}).animate({'opacity' : '1.0'}, _speed);
		});
		
		$('div.pager a').removeClass('active');
		$('div.pager a[href="'+_nextSlide+'"]').addClass('active');
	}
	
	setInterval(slide, _pause);

	$('#mainslider div.pager a').live('click',function(e){
		e.preventDefault();
		var _slide = parseInt($(this).attr('href'));
		
		_container.attr('data-slide',_slide);
		var _image = _slides[_slide];
		
		$('div.back',_container).animate({'opacity' : '0'},_speed, function(){
			$('div.back',_container).css({'background-image' : 'url('+_image+')'}).animate({'opacity' : '1.0'}, _speed);
		});
		
		$('div.pager a').removeClass('active');
		$(this).addClass('active');
		
	});
})