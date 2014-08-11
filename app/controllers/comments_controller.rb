class CommentsController < ApplicationController
	def create
		line = Line.find(params[:comment][:line_id])
		line.comments.create(content: params[:comment][:content])		
	end
	def upvote
		comment = Comment.find(params[:id])
		comment.votes += 1
		comment.save
		@lines = Line.all
		@comment = Comment.new
		@comments = Comment.all
		render :template => 'home/index'
	end
	def downvote
		comment = Comment.find(params[:id])
		comment.votes -= 1
		comment.save
		@lines = Line.all
		@comment = Comment.new		
		@comments = Comment.all
		render :template => 'home/index'
	end
end
