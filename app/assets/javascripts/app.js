$(document).ready(function() {
	$(".upvote_button_line").bind("ajax:success", function(event,data, status, xhr){
		var line_id = this.dataset.id
		$('.line_votes.'+line_id+'').empty()
		$('.line_votes.'+line_id+'').html(''+data.votes+'')
	})
	$(".downvote_button_line").bind("ajax:success", function(event,data, status, xhr){
		var line_id = this.dataset.id
		$('.line_votes.'+line_id+'').empty()
		$('.line_votes.'+line_id+'').html(''+data.votes+'')
	})
	$(".upvote_button_comment").bind("ajax:success", function(event,data, status, xhr){
		var comment_id = this.dataset.id
		$('.comment_votes.'+comment_id+'').empty()
		$('.comment_votes.'+comment_id+'').html(''+data.votes+'')
	})
	$(".downvote_button_comment").bind("ajax:success", function(event,data, status, xhr){
		var comment_id = this.dataset.id
		$('.comment_votes.'+comment_id+'').empty()
		$('.comment_votes.'+comment_id+'').html(''+data.votes+'')
	})
	})