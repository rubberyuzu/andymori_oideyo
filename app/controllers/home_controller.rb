class HomeController < ApplicationController
	def index
		@lines = Line.all	
		@comment = Comment.new
		@comments = Comment.all
	end
end
