// JavaScript Document
$(document).on('page:change', function(){
	$('#maincontent a.choose').click(function(e){
		e.preventDefault();
		
		var _display = $('#maincontent').hasClass('show');
		
		if(_display){
			$('#maincontent div.text').addClass('hide');
			$(this).addClass('hide');
			$('#maincontent').removeClass('show');		
		}
		else{
			$('#maincontent div.text').removeClass('hide');
			$(this).removeClass('hide');
			$('#maincontent').addClass('show');
		}
	});
	
	$('#show_menu').click(function(e){
		e.preventDefault();
		var _tog = $('header div.menublock').hasClass('vis');
		
		if(!_tog){
			var _win = $(window).height() - $('header').height() - 163;
			$('header div.menublock').addClass('vis').height(_win);
			$('#mobilelogo').addClass('red');
		}
		else{
			$('header div.menublock').removeClass('vis');
			$('#mobilelogo').removeClass('red');	
		}
	});
	
	$('.scrollpane').jScrollPane();
	$(window).on('resize', function(){
		$('.scrollpane').jScrollPane();	
	});

});
