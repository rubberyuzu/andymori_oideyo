class GeneralCommentsController < ApplicationController
	def create
		GeneralComment.create(content: params[:general_comment][:content])
		redirect_to :back
	end
	def upvote
		general_comment = GeneralComment.find(params[:id])
		general_comment.votes += 1
		general_comment.save
		respond_to do |format|
      format.json {render json: {votes: general_comment.votes}}
    end	
  end

	def downvote
		general_comment = GeneralComment.find(params[:id])
		general_comment.votes -= 1
		general_comment.save
		respond_to do |format|
      format.json {render json: {votes: general_comment.votes}}
    end
	end
end
