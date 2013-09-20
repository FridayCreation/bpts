jQuery(document).ready ($) ->

	delay = (ms, func) -> setTimeout func, ms

	$('#header').load 'header.html', ()->

		# console.log 'load tpl'


		urlname = window.location.pathname
		bannerId = urlname.replace('/','#').replace('.html','-banner')
		if bannerId is '#' or '' then bannerId = '#index-banner'
		# console.log bannerId
		$(''+bannerId).removeClass('inactive')
		# console.log $(bannerId)


	$("#myTab a").click (e)->
		$(this).css('background', 'transparent')
		$('html, body').animate({ scrollTop: $('#footer').offset().top }, 'slow');
		ping()

	# go = ->
	# 	$('.man-story').jScrollPane(
	# 		alwaysShowScroll : true
	# 	)

	# ping = ->
	# 	console.log "Pinged"
	# 	if $('.man-story').jScrollPane == 'undefined'
	#     	setTimeout ping, 1000
	# 	else
	#     	go()
	#     	setTimeout go, 500
	# ping()

	# # scroll bar setup
	# $(".scroll-pane").jScrollPane scrollbarWidth: 18

