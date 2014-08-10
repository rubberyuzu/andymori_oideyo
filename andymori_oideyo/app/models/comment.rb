class Comment < ActiveRecord::Base
	attr_accessible :content

	belongs_to :line
	has_many :votes, :as => :voteable
end
