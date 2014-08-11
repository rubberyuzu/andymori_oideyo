class LinesController < ApplicationController
	def upvote
		line = Line.find(params[:id])
		line.votes += 1
		line.save
		@lines = Line.all
		@comment = Comment.new
		@comments = Comment.all
		respond_to do |format|
      format.json {render json: {votes: line.votes}}
    end
	end
	def downvote
		line = Line.find(params[:id])
		line.votes -= 1
		line.save
		@lines = Line.all
		@comment = Comment.new
		@comments = Comment.all
		respond_to do |format|
      format.json {render json: {votes: line.votes}}
    end
	end
end
