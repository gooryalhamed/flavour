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

function showDropDownRec(){
	$('a#dropbtn_rec').on('click', function(){
		$('#droprec').show();
	});
}
function showDropDownCat(){
	$('a#dropbtn_cat').on('click', function(){
		$('#dropcat').show();
	});
}

$(document).on("turbolinks:load", function(){
	showcontact();
	closecontact();
	showDropDownRec();
	showDropDownCat();
});