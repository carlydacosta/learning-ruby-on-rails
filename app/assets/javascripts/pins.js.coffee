# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Could also add the script directly in the application.js file, just at the bottom.
# WHITESPACE / TABS Matter.

$ ->
	# when the images in my pin div load do all this
	$('#pins').imagesLoaded ->
		# calling jQuery's masonry element to do I want
		$('#pins').masonry
			itemSelector: '.box'
			# centers items on the page
			isFitWidth: true