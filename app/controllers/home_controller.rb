class HomeController < ApplicationController
	def index
		@lines = Line.all.sort_by &:id
		@comment = Comment.new
		@comments = Comment.all.sort_by &:id
		@general_comment = GeneralComment.new
		@general_comments = GeneralComment.all
	end
end
