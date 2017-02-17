function showcontact(){
	$('#about').on('click', function(){
		$('#contact').show()
	});
}

function closecontact(){
	$('#contact span').on('click', function(){
		$('#contact').hide()
	});
}

$(document).on("turbolinks:load", function(){
	showcontact();
	closecontact();
});

