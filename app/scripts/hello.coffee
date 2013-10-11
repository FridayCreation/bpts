jQuery(document).ready ($) ->

	delay = (ms, func) -> setTimeout func, ms

	# 1 <= x <= 18
	random18 = ->
		Math.floor(Math.random() * 18) + 1

	$('#header').load 'header.html', ()->


		urlname = window.location.pathname
		bannerId = urlname.replace('/','#').replace('.html','-banner')
		if bannerId is '#' or '' then bannerId = '#index-banner'
		
		if bannerId == '#instructor-banner'
			$(''+bannerId).fadeIn 1000
		else
			$('#b'+random18()).fadeIn 1000


	$("#myTab a").click (e)->
		$(this).css('background', 'transparent')
		$('html, body').animate({ scrollTop: $('#footer').offset().top }, 'slow');
		ping()

	
