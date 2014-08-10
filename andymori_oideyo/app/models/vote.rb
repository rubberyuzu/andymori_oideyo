class Vote < ActiveRecord::Base
	attr_accessible :value, :voteable_id, :voteable_type

	belongs_to :voteable, :polymorphic => true
end
