$(document).on('page:change', function(){
/*	var _cont = $('#maincontent').height();
	var _half = -(_cont/2);
	$('#maincontent').css({'margin-top' : _half});	*/
	$('#ajax_form').validate({
		rules:{
			name:{
				required: true,
				minlength: 5
			},
			tel:{
				required: true
			},
			message:{
				required: true,
				minlength: 5
			}
		}
	});

	$('#ajax_form').submit(function(e){
		e.preventDefault()
		var self = this;
		if($(this).valid()){
			var name = $('input[name="name"]',self).val()
			var tel = $('input[name="tel"]',self).val()
			var mess = $('textarea',self).val()

			$.ajax({
				type: "POST",
				url: "/send",
				data: {},
				success: function(){
					$.jGrowl("Ваше сообщение отправлено", { life: 5000 });
				},
				error: function(data){
					alert(data);
				}	
			}) 
		}	
	})
		
		
		
});//end