class Line < ActiveRecord::Base
	attr_accessible :content

	has_many :comments
	has_many :votes, :as => :voteable
end