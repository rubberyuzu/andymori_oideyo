class HomeController < ApplicationController
	def index
		@lines = Line.all	
		@comment = Comment.new
		@comments = Comment.all
		@comments = @comments.sort_by &:id
		@general_comment = GeneralComment.new
		@general_comments = GeneralComment.all
	end
end
