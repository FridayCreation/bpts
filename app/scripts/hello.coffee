jQuery(document).ready ($) ->
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
		# $("div#footer").focus()
		$('html, body').animate({ scrollTop: $('#footer').offset().top }, 'slow');


	# # scroll bar setup
	# $(".scroll-pane").jScrollPane scrollbarWidth: 18