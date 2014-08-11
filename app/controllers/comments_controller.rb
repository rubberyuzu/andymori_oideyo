class CommentsController < ApplicationController
	def create
		line = Line.find(params[:comment][:line_id])
		line.comments.create(content: params[:comment][:content])
		redirect_to :back
	end
	
	def upvote
		comment = Comment.find(params[:id])
		comment.votes += 1
		comment.save
		@lines = Line.all
		@comment = Comment.new
		@comments = Comment.all
		respond_to do |format|
      format.json {render json: {votes: comment.votes}}
    end	
  end

	def downvote
		comment = Comment.find(params[:id])
		comment.votes -= 1
		comment.save
		@lines = Line.all
		@comment = Comment.new		
		@comments = Comment.all
		respond_to do |format|
      format.json {render json: {votes: comment.votes}}
    end
	end

end
