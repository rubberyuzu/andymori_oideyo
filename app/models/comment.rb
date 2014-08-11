class Comment < ActiveRecord::Base
	attr_accessible :content, :votes
	before_save :default_votes
	def default_votes
		self.votes ||= 0
	end	
	belongs_to :line
end
