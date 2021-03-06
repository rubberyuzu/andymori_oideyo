class Line < ActiveRecord::Base
	attr_accessible :content, :votes
	before_save :default_votes
	def default_votes
		self.votes ||= 0
	end	
	has_many :comments
end