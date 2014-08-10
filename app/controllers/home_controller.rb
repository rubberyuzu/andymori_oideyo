class HomeController < ApplicationController
	def index
		@lines = Line.all	
		@comment = Comment.new
	end
end
