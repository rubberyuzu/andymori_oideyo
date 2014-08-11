class LinesController < ApplicationController
	def upvote
		line = Line.find(params[:id])
		line.votes += 1
		line.save
		@lines = Line.all
		@comment = Comment.new
		render :template => 'home/index'
	end
	def downvote
		line = Line.find(params[:id])
		line.votes -= 1
		line.save
		@lines = Line.all
		@comment = Comment.new
		render :template => 'home/index'
	end
end
