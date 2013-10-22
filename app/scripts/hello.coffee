jQuery(document).ready ($) ->

	delay = (ms, func) -> setTimeout func, ms

	# 1 <= x <= 18
	random18 = ->
		Math.floor(Math.random() * 12) + 1

	changeBanner = ->
		nowBanner = $('#b'+random18())
		nowBanner.fadeIn 1000
		# nowBanner.fadeIn 2500, ->
		# 	nowBanner.delay(5000).fadeOut 500, ->
		# 		changeBanner()

	$('#header').load 'header.html', ()->


		urlname = window.location.pathname
		bannerId = urlname.replace('/','#').replace('.html','-banner')
		if bannerId is '#' or '' then bannerId = '#index-banner'
		
		if bannerId == '#instructor-banner'
			$(''+bannerId).fadeIn 1000
		else
			changeBanner()


	$("#myTab a").click (e)->
		$(this).css('background', 'transparent')
		$('html, body').animate({ scrollTop: $('#footer').offset().top }, 'slow');
		ping()

	
