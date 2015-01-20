class Pin < ActiveRecord::Base
	# use singular user. one pin belongs to a user
	# Pin now has a user method.
	belongs_to :user
end
