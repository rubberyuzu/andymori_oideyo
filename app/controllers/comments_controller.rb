class CommentsController < ApplicationController
	def create
		Comment.create(content: params[:content])		
	end
end
