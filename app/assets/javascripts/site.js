$(document).on('turbolinks:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
	readOnly: true,
	score: function() {
		return $(this).attr('data-score')
		} 
	});
	//A jQuery image zoom plugin
	
	$('.img-zoom').elevateZoom({
 	});
});



