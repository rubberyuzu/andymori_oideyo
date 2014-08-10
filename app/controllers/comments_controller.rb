class CommentsController < ApplicationController
	def create
		line = Line.find(params[:comment][:line_id])
		line.comments.create(content: params[:comment][:content])		
	end
end
