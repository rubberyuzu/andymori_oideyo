class HomeController < ApplicationController
	def index
		@lines = Line.all	
	end
end
